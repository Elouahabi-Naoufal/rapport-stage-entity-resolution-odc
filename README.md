# Rapport de Stage — Entity Resolution — Office des Changes 2026

**Auteur :** Naoufal El Ouahabi  
**Encadrante entreprise :** Mme. Majidi Nadia — Office des Changes, Rabat  
**Encadrant entreprise :** M. Mansouri Salah-Eddine — Chef Division Organisation & AMOA  
**Tuteur EMSI :** M. Othman Bakkaliyedri  
**École :** EMSI Tanger — 4ème année cycle ingénieur  
**Période :** Juillet–Août 2026

---

## Sujet

> **Apport de l'Entity Resolution et du Machine Learning dans l'amélioration de la qualité des données des opérateurs de change à l'Office des Changes**

---

## Compiler le rapport

### Prérequis

- Une distribution LaTeX complète : [TeX Live](https://www.tug.org/texlive/) (Linux/macOS) ou [MiKTeX](https://miktex.org/) (Windows)
- Ou compiler en ligne sur [Overleaf](https://www.overleaf.com) (voir ci-dessous)

### Compilation locale

```bash
git clone https://github.com/Elouahabi-Naoufal/rapport-stage-entity-resolution-odc.git
cd rapport-stage-entity-resolution-odc

# Compiler (3 passes pour la table des matières et les références)
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

Le fichier `main.pdf` sera généré dans le répertoire courant.

### Compiler sur Overleaf

1. Aller sur [overleaf.com](https://www.overleaf.com)
2. **New Project** → **Upload Project**
3. Zipper ce dépôt et uploader le `.zip`
4. Overleaf compile automatiquement

---

## Structure du projet

```
.
├── main.tex                        # Fichier principal
├── preambule.tex                   # Packages LaTeX
├── rapportCS.cls                   # Classe du document
├── bibliography.bib                # Références bibliographiques
├── logos/                          # Logos (OdC, EMSI, technologies)
│   ├── logo-office.jpg
│   ├── emsi.png
│   ├── python.png
│   ├── duckdb.png
│   └── ...
└── contenu/
    ├── pageDeGarde.tex             # Page de garde
    ├── remerciements.tex           # Remerciements
    ├── abstract.tex                # Résumé & Abstract
    ├── introductionGenerale.tex    # Introduction
    ├── chapitre1.tex               # Cadre institutionnel OdC
    ├── chapitre2.tex               # Problématique & Entity Resolution
    ├── chapitre3.tex               # Pipeline (nettoyage + Splink + XGBoost)
    ├── chapitre4.tex               # Résultats & Évaluation
    └── conclusionGenerale.tex      # Conclusion & Perspectives
```

---

## Technologies utilisées

| Technologie | Rôle |
|-------------|------|
| Python 3.14 | Langage principal |
| Splink 4.x | Entity Resolution probabiliste (Fellegi-Sunter + EM) |
| XGBoost | Classification ML des cas difficiles |
| DuckDB | Moteur analytique pour le blocage |
| SQL Server 2022 | Base de données (infrastructure OdC) |
| pandas | Manipulation des données |

---

## Résultats clés

| Métrique | Splink seul | Splink + XGBoost |
|----------|-------------|------------------|
| Précision | 72,7 % | ~85–90 % |
| Recall | 100 % | ~95 % |
| F1-Score | 78,6 % | ~89 % |
| Runtime | ~2 min / 100K déclarations | — |
