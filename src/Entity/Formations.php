<?php

namespace App\Entity;

use App\Repository\FormationsRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: FormationsRepository::class)]
class Formations
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $titre = null;

    #[ORM\Column(length: 255)]
    private ?string $résumé = null;

    #[ORM\Column(length: 255)]
    private ?string $textexplicatif = null;

    #[ORM\Column(length: 255)]
    private ?string $durée = null;

    #[ORM\Column(length: 255)]
    private ?string $niveau = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): static
    {
        $this->titre = $titre;

        return $this;
    }

    public function getRésumé(): ?string
    {
        return $this->résumé;
    }

    public function setRésumé(string $résumé): static
    {
        $this->résumé = $résumé;

        return $this;
    }

    public function getTextexplicatif(): ?string
    {
        return $this->textexplicatif;
    }

    public function setTextexplicatif(string $textexplicatif): static
    {
        $this->textexplicatif = $textexplicatif;

        return $this;
    }

    public function getDurée(): ?string
    {
        return $this->durée;
    }

    public function setDurée(string $durée): static
    {
        $this->durée = $durée;

        return $this;
    }

    public function getNiveau(): ?string
    {
        return $this->niveau;
    }

    public function setNiveau(string $niveau): static
    {
        $this->niveau = $niveau;

        return $this;
    }
}
