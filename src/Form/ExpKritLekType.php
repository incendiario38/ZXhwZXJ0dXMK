<?php

declare(strict_types=1);

namespace App\Form;

use App\Entity\ExpStdPrep;
use App\Entity\ExtStd;
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

        if (isset($options['property_path']) && \mb_strlen($options['property_path']) >= 3) {
            $data = $options['dataset'][\mb_substr($options['property_path'], 1, \mb_strlen($options['property_path']) - 2)] ?? [];
        } else
        {
            $data = [];
        }

        $expStd = $em->getRepository(ExtStd::class)->findAll();

        $builder
            ->add('expStd', ChoiceType::class, [
                'label' => 'Стандарт',
                'choices' => $expStd,
                'choice_value' => 'id',
                'choice_label' => function(?ExtStd $category) {
                    return $category ? $category->getStd(): '';
                },
                'multiple' => false,
                'placeholder' => 'Выберите стандарт',
                'label_attr' => [
                    'autocomplete' => 'off',
                ],
                'attr' => [
                    'data-width' => "100%",
                    'class' => 'selectpicker',
                    'data-live-search' => true,
                    'autocomplete' => 'off',
                    'onchange' => 'this.form.submit()'
                ],
            ]);

        if (isset($data['expStd']) && !empty($data['expStd'])) {
            $expStd = $data['expStd']?? null;

            $list_std_usl = $em->getRepository(ExpStdPrep::class)->findBy([
                'idStd' => $expStd
            ]);

            $builder->add('std_prep', ChoiceType::class, [
                'label' => 'Лекарства',
                'choices' =>$list_std_usl,
                'choice_value' => 'id',
                'choice_label' => function(?ExpStdPrep $category) {
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
                    'autocomplete' => 'off'
                ],
            ]);
        }
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setRequired('em');
        $resolver->setRequired('dataset');
    }
}
