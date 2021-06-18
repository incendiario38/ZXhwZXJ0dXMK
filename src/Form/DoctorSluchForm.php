<?php


namespace App\Form;


use App\Entity\ExpMkb10;
use App\Entity\ExpPatient;
use App\Entity\ExpSluch;
use App\Entity\ExpUsl;
use App\Entity\User;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class DoctorSluchForm extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     * @throws \Exception
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $em = $options["em"];
        /** @var User $user */
        $user = $options["user"];
        if (!$em instanceof EntityManager) {
            throw new \Exception('Необходимо передать объект: ' . EntityManager::class);
        }

        $builder->add('patient', EntityType::class, [
            'label' => 'Способ взаимодействия',
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
                'autocomplete' => 'off'
            ],
            'attr' => [
                'autocomplete' => 'off'
            ],
        ])->add('nMedCard', NumberType::class, [
            'label' => 'Номер истории болезни',
            'required' => true,
            'label_attr' => [
                'autocomplete' => 'off'
            ],
            'attr' => [
                'autocomplete' => 'off'
            ],
        ])->add('dbeg', DateType::class, [
            'label' => 'Дата начала лечения',
            'required' => true,
            'widget'=>'single_text',
            'label_attr' => [
                'autocomplete' => 'off'
            ],
            'attr' => array(
                'autocomplete' => 'off',
                'class' => 'datepicker',
                'data-provide' => "datepicker",
                'data-date-format' => "dd.mm.yyyy",
                'data-date-language' => "ru-RU",
            ),
        ])->add('dend', DateType::class, [
            'label' => 'Дата окончания лечения',
            'required' => true,
            'widget'=>'single_text',
            'label_attr' => [
                'autocomplete' => 'off'
            ],
            'attr' => array(
                'autocomplete' => 'off',
                'class' => 'datepicker',
                'data-provide' => "datepicker",
                'data-date-format' => "dd.mm.yyyy",
                'data-date-language' => "ru-RU",
            ),
        ])->add('mkb', EntityType::class, [
            'label' => 'Основной диагноз',
            'class' => ExpMkb10::class,
            'choice_label' => function (ExpMkb10 $mk) {
                return $mk->getKodmkb() . " " . $mk->getNameSh();
            },
            'em' => $em,
            'required' => true,
            'multiple' => false,
            /*'query_builder' => function (EntityRepository $er) use ($user) {
                return
                    $er->createQueryBuilder('t')
                        ->andWhere('t.lpu = :lpu')
                        ->setParameter('lpu', $user->getVrach()->getLpu()->getLpuId());
            },*/
            'label_attr' => [
                'autocomplete' => 'off'
            ],
            'attr' => [
                'autocomplete' => 'off'
            ],
        ])->add('uslOk', ChoiceType::class, [
            'label' => 'Условия оказания медицинской помощи',
            'choices' => [
                'Стационар' => 0,
                'Поликлиника' => 4,
                'Скорая помощь' => 9
            ],
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
        ])->add('forma', ChoiceType::class, [
            'label' => 'Форма оказания медицинской помощи',
            'choices' => [
                'Плановая' => 1,
                'Экстренная' => 2,
                'Неотложная' => 3
            ],
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
        ])->add('stage', ChoiceType::class, [
            'label' => 'Степень тяжести',
            'choices' => [
                'Нет' => 1,
                'Тяжелая' => 2,
            ],
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
        ])->add('phase', ChoiceType::class, [
            'label' => 'Фаза состояния',
            'choices' => [
                'Нет' => 1,
                'Острая' => 2,
            ],
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
        ])->add('usl', CollectionType::class, [
            'entry_type'   => SluchLekUslForm::class,
            'allow_add' => true,
            'entry_options' => ['em' => $em],
            'prototype' => true
        ])->add('save', SubmitType::class, array(
                'label' => 'Сохранить',
                'attr' => array(
                    'class' => 'btn-primary',
                ),
            )
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
        $resolver->setDefaults(array(
            'data_class' => ExpSluch::class,
        ));
    }

    /**
     * @return string|null
     */
    public function getBlockPrefix()
    {
        return 'statement_type';
    }
}