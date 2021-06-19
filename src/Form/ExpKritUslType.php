<?php

declare(strict_types=1);

namespace App\Form;

use App\Entity\ExpStdUsl;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ExpKritUslType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        /** @var EntityManager $em */
        $em = $options["em"];


        $list_std_usl = $em->getRepository(ExpStdUsl::class)->findBy([
            'idStd' => $options['std'],
        ]);

        $builder->add('krit_str', ChoiceType::class, [
            'label' => 'Услуги',
            'choices' => $list_std_usl,
            'choice_value' => 'id',
            'choice_label' => function (?ExpStdUsl $category) {
                return $category ? $category->getKodUsl() . ' ' . $category->getNameUsl() : '';
            },
            'multiple' => false,
            'placeholder' => 'Выберите услугу',
            'label_attr' => [
                'autocomplete' => 'off',
            ],
            'attr' => [
                'data-width' => "100%",
                'class' => 'selectpicker',
                'data-live-search' => true,
                'autocomplete' => 'off',
            ],
        ]);

        $builder->add('period', IntegerType::class, [
            'label' => 'Время выполнения услуги с момента поступления на лечение (минуты)',
            'attr' => [
                'data-width' => "100%",
                'autocomplete' => 'off',
                'class' => 'form-control',
            ],
        ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setRequired('em');
        $resolver->setRequired('std');
    }
}
