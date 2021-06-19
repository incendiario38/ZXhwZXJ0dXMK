<?php

declare(strict_types=1);

namespace App\Form;

use App\Entity\ExpStdPrep;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ExpKritLekType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        /** @var EntityManager $em */
        $em = $options["em"];


        $list_std_usl = $em->getRepository(ExpStdPrep::class)->findBy([
            'idStd' => $options['std'],
        ]);

        $builder->add('std_prep', ChoiceType::class, [
            'label' => 'Лекарства',
            'choices' => $list_std_usl,
            'choice_value' => 'id',
            'choice_label' => function (?ExpStdPrep $category) {
                return $category ? $category->getName() : '';
            },
            'multiple' => false,
            'placeholder' => 'Выберите лекарства',
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
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setRequired('em');
        $resolver->setRequired('std');
    }
}
