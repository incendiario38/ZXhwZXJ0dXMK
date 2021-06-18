<?php


namespace App\Form;


use App\Entity\ExpLpu;
use App\Entity\ExpPatient;
use App\Entity\ExpSluch;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityRepository;
use Doctrine\ORM\Query\Expr\Join;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\OptionsResolver\OptionsResolver;

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
        if (!$em instanceof EntityManager) {
            throw new \Exception('Необходимо передать объект: ' . EntityManager::class);
        }

        $builder->add('patient', EntityType::class, [
            'label' => 'Способ взаимодействия',
            'class' => ExpPatient::class,
            'choice_label' => 'fam',
            'em' => $em,
            'required' => true,
            'multiple' => false,
            'query_builder' => function (EntityRepository $er) {
                return
                    $er->createQueryBuilder('t')
                        //->join(ExpLpu::class, 'lp', Join::WITH, 'lp.patient = t.lpu')
                        ->andWhere('t.lpuId = 2');
            },
            'label_attr' => [
                'autocomplete' => 'off'
            ],
            'attr' => [
                'autocomplete' => 'off'
            ],
        ]);

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