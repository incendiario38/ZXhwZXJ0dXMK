<?php


namespace App\Form;


use App\Entity\ExpKritZag;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ExpertKritForm extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        /** @var EntityManager $em */
        $em = $options["em"];

        $expKritZagAll = $em->getRepository(ExpKritZag::class)->findAll();
        $choiseZag = [];
        /** @var ExpKritZag $zag */
        foreach ($expKritZagAll as $zag) {
            $choiseZag[mb_substr($zag->getZag() . " " . $zag->getKrit(), 0, 100) . "..."] = $zag->getId();
        }

        $builder->add('krit_zag', ChoiceType::class, [
            'label' => 'Группа критериев',
            'choices' => $choiseZag,
            'multiple' => false,
            'required' => true,
            'placeholder' => false,
            'empty_data' => null,
            'label_attr' => [
                'autocomplete' => 'off'
            ],
            'attr' => [
                'id' => 'patient',
                'data-width' => "100%",
                'class' => 'selectpicker',
                'autocomplete' => 'off'
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