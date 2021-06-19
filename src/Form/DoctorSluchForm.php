<?php


namespace App\Form;


use App\Entity\ExpMkb10;
use App\Entity\ExpPatient;
use App\Entity\ExpSluch;
use App\Entity\User;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\OptionsResolver\OptionsResolver;

class DoctorSluchForm extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array                $options
     *
     * @throws \Exception
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $em = $options["em"];
        /** @var User $user */
        $user = $options["user"];
        if (! $em instanceof EntityManager) {
            throw new \Exception('Необходимо передать объект: ' . EntityManager::class);
        }

        $builder->add('patient', EntityType::class, [
            'label' => false,
            'class' => ExpPatient::class,
            'choice_label' => function (ExpPatient $pu) {
                return $pu->getFam() . " " . $pu->getIm() . " " . $pu->getOt();
            },
            'em' => $em,
            'required' => true,
            'multiple' => false,
            'query_builder' => function (EntityRepository $er) use ($user) {
                return
                    $er->createQueryBuilder('t')
                        ->andWhere('t.lpu = :lpu')
                        ->setParameter('lpu', $user->getVrach()->getLpu()->getLpuId());
            },
            'label_attr' => [
                'autocomplete' => 'off',
            ],
            'attr' => [
                'id' => 'patient',
                'data-width' => "100%",
                'class' => 'selectpicker',
                'autocomplete' => 'off',
            ],
        ])->add('nMedCard', NumberType::class, [
            'label' => 'Номер истории болезни',
            'required' => true,
            'label_attr' => [
                'autocomplete' => 'off',
            ],
            'attr' => [
                'style' => 'width: 100%',
                'id' => 'nMedCard',
                'autocomplete' => 'off',
                'class' => 'form-control',
            ],
        ])->add('dbeg', DateType::class, [
            'label' => 'Дата начала лечения',
            'required' => true,
            'html5' => false,
            'widget' => 'single_text',
            'format' => 'dd.MM.yyyy',
            'label_attr' => [
                'autocomplete' => 'off',
            ],
            'attr' => [
                'id' => 'dbeg',
                'autocomplete' => 'off',
                'class' => 'datepicker form-control',
                'data-provide' => "datepicker",
                'data-date-format' => "dd.mm.yyyy",
                'data-date-language' => "ru-RU",
            ],
        ])->add('dend', DateType::class, [
            'label' => 'Дата окончания лечения',
            'required' => true,
            'html5' => false,
            'widget' => 'single_text',
            'format' => 'dd.MM.yyyy',
            'label_attr' => [
                'autocomplete' => 'off',
            ],
            'attr' => [
                'id' => 'dend',
                'autocomplete' => 'off',
                'class' => 'datepicker form-control',
                'data-provide' => "datepicker",
                'data-date-format' => "dd.mm.yyyy",
                'data-date-language' => "ru-RU",
            ],
        ])->add('mkb', EntityType::class, [
            'label' => 'Основной диагноз',
            'class' => ExpMkb10::class,
            'choice_label' => function (ExpMkb10 $mk) {
                return $mk->getKodmkb() . " " . $mk->getNameSh();
            },
            'em' => $em,
            'required' => true,
            'multiple' => false,
            'query_builder' => function (EntityRepository $er) {
                return
                    $er->createQueryBuilder('t')
                        ->andWhere('t.enable = 1');
            },
            'label_attr' => [
                'autocomplete' => 'off',
            ],
            'attr' => [
                'id' => 'mkb',
                'data-width' => "100%",
                'class' => 'selectpickermkb',
                'autocomplete' => 'off',
            ],
        ])->add('uslOk', ChoiceType::class, [
            'label' => 'Условия оказания медицинской помощи',
            'choices' => [
                'Стационар' => 0,
                'Поликлиника' => 4,
                'Скорая помощь' => 9,
            ],
            'choice_attr' => function ($val, $key, $index) {

                $attr = [];

                if ($val != 0) {
                    $attr['disabled'] = 'disabled';
                }

                return $attr;
            },
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
            'attr' => [
                'class' => 'form-control',
                'id' => 'uslOk',
            ],
        ])->add('forma', ChoiceType::class, [
            'label' => 'Форма оказания медицинской помощи',
            'choices' => [
                'Плановая' => 1,
                'Экстренная' => 2,
                'Неотложная' => 3,
            ],
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
            'attr' => [
                'class' => 'form-control',
                'forma' => 'stage',
            ],
        ])->add('stage', ChoiceType::class, [
            'label' => 'Степень тяжести',
            'choices' => [
                'Нет' => 0,
                'Тяжелая' => 1,
            ],
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
            'attr' => [
                'class' => 'form-control',
                'id' => 'stage',
            ],
        ])->add('phase', ChoiceType::class, [
            'label' => 'Фаза состояния',
            'choices' => [
                'Нет' => 0,
                'Острая' => 1,
            ],
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
            'attr' => [
                'class' => 'form-control',
                'id' => 'phase',
            ],
        ])->add('usl', CollectionType::class, [
            'entry_type' => SluchLekUslForm::class,
            'allow_add' => true,
            'entry_options' => ['em' => $em],
            'prototype' => true,
            'label' => false,
        ])->add('lek', CollectionType::class, [
            'entry_type' => SluchLekForm::class,
            'allow_add' => true,
            'entry_options' => ['em' => $em],
            'prototype' => true,
            'label' => false,
        ])->add('save', SubmitType::class, [
                'label' => 'Сохранить',
                'attr' => [
                    'class' => 'btn btn-success btn-lg',
                    'style' => 'display:block; margin:auto',
                ],
            ]
        );

        $builder->setMethod(Request::METHOD_POST);
    }

    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setRequired('em');
        $resolver->setRequired('user');
        $resolver->setDefaults([
            'data_class' => ExpSluch::class,
            'cascade_validation' => true,
        ]);
    }

    /**
     * @return string|null
     */
    public function getBlockPrefix()
    {
        return 'statement_type';
    }
}