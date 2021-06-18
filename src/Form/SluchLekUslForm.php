<?php


namespace App\Form;


use App\Entity\ExpSluchUsl;
use App\Entity\ExpUsl;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SluchLekUslForm extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $em = $options["em"];

        $builder
            ->add('usl', EntityType::class, [
                'label' => 'Оказанная услуга',
                'class' => ExpUsl::class,
                'choice_label' => function (ExpUsl $u) {
                    return $u->getUslCode();
                },
                'em' => $em,
                'required' => true,
                'multiple' => false,
                'label_attr' => [
                    'autocomplete' => 'off'
                ],
                'attr' => [
                    'autocomplete' => 'off'
                ],
            ])->add('dateUsl', DateType::class, [
                'label' => 'Дата оказания услуги',
                'required' => true,
                'widget' => 'single_text',
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
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setRequired('em');
        $resolver->setDefaults(array(
            'data_class' => ExpSluchUsl::class
        ));
    }
}