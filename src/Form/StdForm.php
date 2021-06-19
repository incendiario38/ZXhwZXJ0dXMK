<?php


namespace App\Form;


use App\Entity\ExpKritLek;
use App\Entity\ExpKritStr;
use App\Entity\ExpKritUsl;
use App\Entity\ExpKritZag;
use App\Entity\ExpStdMkb;
use App\Entity\ExpStdUsl;
use App\Entity\ExtStd;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class StdForm extends AbstractType
{
    const NAME = 'std_form';

    public function getBlockPrefix()
    {
        return self::NAME; // TODO: Change the autogenerated stub
    }


    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        /** @var EntityManager $em */
        $em = $options['em'];

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
                    'autocomplete' => 'off',
                    'onchange' => 'this.form.submit()'
                ],
            ]);
    }


    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setRequired('em');
    }
}