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
                    return mb_substr($u->getUslCode() ." ". $u->getName(), 0, 50)."...";
                },
                'em' => $em,
                'required' => true,
                'multiple' => false,
                'label_attr' => [
                    'autocomplete' => 'off'
                ],
                'attr' => [
                    'id' => 'usl',
                    'data-width' => "100%",
                    'class' => 'selectpickerusl',
                    'autocomplete' => 'off',
                    'style' => 'max-width: 100%'
                ],
            ])->add('dateUsl', DateType::class, [
                'label' => 'Дата оказания услуги',
                'required' => true,
                'html5' => false,
                'widget' => 'single_text',
                'format' => 'dd.MM.yyyy',
                'label_attr' => [
                    'autocomplete' => 'off'
                ],
                'attr' => array(
                    'id' => 'dend',
                    'autocomplete' => 'off',
                    'class' => 'datepicker',
                    'data-provide' => "datepicker",
                    'data-date-format' => "dd.mm.yyyy",
                    'data-date-language' => "ru-RU",
                    'style' => "
                            height: calc(1.5em + 0.75rem + 2px);
                            padding: 0.375rem 0.75rem;
                            font-size: 1rem;
                            font-weight: 400;
                            line-height: 1.5;
                            color: #495057;
                            background-color: #fff;
                            background-clip: padding-box;
                            border: 1px solid #ced4da;
                            border-radius: 0.25rem;
                            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
                    "
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