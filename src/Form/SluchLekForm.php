<?php


namespace App\Form;


use App\Entity\ExpLek;
use App\Entity\ExpSluchLek;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SluchLekForm extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $em = $options["em"];

        $builder
            ->add('lekName', EntityType::class, [
                'label' => 'Лекарственный препарат',
                'class' => ExpLek::class,
                'choice_label' => function (ExpLek $u) {
                    return mb_substr($u->getName(), 0, 50) . "...";
                },
                'em' => $em,
                'required' => true,
                'multiple' => false,
                'label_attr' => [
                    'autocomplete' => 'off'
                ],
                'attr' => [
                    'id' => 'usl',
                    'data-width' => "90%",
                    'class' => 'selectpickerlek',
                    'autocomplete' => 'off',
                    'style' => 'width: 100%'
                ],
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setRequired('em');
        $resolver->setDefaults(array(
            'data_class' => ExpSluchLek::class
        ));
    }
}