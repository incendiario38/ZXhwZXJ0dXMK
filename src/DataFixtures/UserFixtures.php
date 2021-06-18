<?php

declare(strict_types=1);

namespace App\DataFixtures;

use App\Entity\Role;
use App\Entity\User;
use App\Security\HashPasswordListener;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Security\Core\Encoder\MessageDigestPasswordEncoder;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserFixtures extends Fixture
{
    private ContainerInterface $container;

    private MessageDigestPasswordEncoder $passwordEncoder;

     public function __construct(ContainerInterface $container)
     {
         $this->container = $container;

         $this->passwordEncoder = new MessageDigestPasswordEncoder(
             $this->container->getParameter('encode.algorithm'),
             $this->container->getParameter('encode.use_base64'),
             $this->container->getParameter('encode.iterations')
         );

     }

    public function load(ObjectManager $manager)
    {
        $salt = (string) (new \DateTime('NOW'))->getTimestamp();

        $doctor = new User();
        $doctor->setUsername('doctor');
        $doctor->setSalt($salt);
        $doctor->setPassword($this->passwordEncoder->encodePassword('doctor', $salt));
        $doctor->setRoles([Role::DOCTOR]);

        $manager->persist($doctor);



        $expert = new User();
        $expert->setUsername('expert');
        $expert->setSalt($salt);
        $expert->setPassword($this->passwordEncoder->encodePassword('expert', $salt));
        $expert->setRoles([Role::EXPERT]);

        $manager->persist($expert);

        $manager->flush();
    }
}
