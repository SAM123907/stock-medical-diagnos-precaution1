# 📘 GUIDE D'INSTALLATION — StockMédical

Ce guide vous explique, étape par étape, comment mettre votre application en ligne
**gratuitement**, sans aucune compétence en programmation. Prévoyez environ 20 minutes.

---

## ÉTAPE 1 : Créer votre base de données gratuite (Supabase)

1. Allez sur **https://supabase.com** → cliquez sur **Start your project** → **Sign up**
   (inscrivez-vous avec votre email, gratuit, sans carte bancaire).
2. Cliquez sur **New project** :
   - **Name** : `stockmedical`
   - **Database Password** : cliquez sur **Generate** et **copiez-le dans un endroit sûr**
   - **Region** : choisissez la plus proche de chez vous (ex. Europe)
3. Attendez 1-2 minutes que le projet se crée.

## ÉTAPE 2 : Créer les tables (base de données)

1. Dans le menu de gauche, cliquez sur **SQL Editor** → **+ New query**.
2. Ouvrez le fichier `schema.sql` fourni avec cette application, copiez **tout** son contenu,
   collez-le dans l'éditeur SQL, puis cliquez sur **Run**.
3. Vous devez voir le message « Success ». ✅

## ÉTAPE 3 : Récupérer vos clés (codes d'accès de l'application)

1. Dans le menu de gauche, cliquez sur **Project Settings** (roue dentée) → **API**.
2. Copiez les deux valeurs suivantes :
   - **Project URL** (ex. `https://abcdefghij.supabase.co`)
   - **anon public** key (longue clé commençant par `eyJ...`)

## ÉTAPE 4 : Connecter l'application à votre base

1. Ouvrez le fichier `index.html` avec un éditeur de texte (Bloc-notes, WordPad...).
2. Repérez ces deux lignes tout au début du script :
   ```js
   const SUPABASE_URL = "https://VOTRE-PROJET.supabase.co";
   const SUPABASE_KEY = "VOTRE-CLE-ANON-PUBLIQUE";
   ```
3. Remplacez-les par vos valeurs de l'Étape 3 (gardez les guillemets).
4. Sauvegardez le fichier.

## ÉTAPE 5 : Mettre l'application en ligne gratuitement (Vercel)

1. Allez sur **https://vercel.com** → **Sign up** (gratuit, avec votre email ou GitHub).
2. Cliquez sur **Add New → Project**, puis **Import** un dossier... Le plus simple :
   installez **GitHub** (gratuit), créez un compte, puis glissez-déposez les fichiers
   dans un nouveau dépôt (repository) nommé `stockmedical`.
3. Dans Vercel : **Import Project** → sélectionnez `stockmedical` → **Deploy**.
4. Après ~30 secondes, Vercel vous donne une adresse web du type :
   `https://stockmedical.vercel.app` — **c'est l'adresse de votre application !** 🎉

## ÉTAPE 6 : Vous connecter en tant qu'administrateur

1. Ouvrez l'adresse de votre application.
2. Allez dans l'onglet **Créer un compte**, entrez votre email et un mot de passe.
3. **Le premier compte créé devient automatiquement l'administrateur.**
   ⚠️ Créez donc VOTRE compte en premier, avant ceux de vos employés.

## ÉTAPE 7 : Créer les comptes de vos employés (vous seul)

Personne ne peut se créer un compte seul : l'inscription directe est désactivée après vous.
Pour ajouter un employé :

1. Dans Supabase, menu **Authentication** → **Users** → **Add user** → **Create new user**.
2. Entrez l'email de l'employé et un mot de passe temporaire.
   ⚠️ **Décochez** « Auto Confirm User » si vous voyez cette option (sinon l'email de
   confirmation pose souci) — laissez l'utilisateur confirmé directement.
3. Donnez ces identifiants à l'employé. Il se connecte via l'onglet **Connexion**.

## ÉTAPE 8 : Installer l'application sur téléphone et ordinateur

- **Android** : ouvrez l'adresse dans Chrome → menu ⋮ → **Ajouter à l'écran d'accueil**.
- **iPhone/iPad** : ouvrez l'adresse dans Safari → bouton Partager → **Sur l'écran d'accueil**.
- **Windows/Mac** : ouvrez l'adresse dans Chrome/Edge → icône d'installation 🖥️ dans la barre d'adresse → **Installer**.

L'application s'ouvre alors comme une vraie application, avec son icône, sans la barre du navigateur.

---

## 🔔 Les alertes de rupture de stock

- Sur la page d'accueil, un bandeau rouge liste automatiquement les produits en rupture
  ou sous le seuil d'alerte.
- Autorisez les notifications du navigateur : vous recevrez une notification dès qu'un
  produit tombe en rupture.

## ❓ Besoin d'aide ?

Revenez vers moi (votre assistant IA) à n'importe quelle étape — je peux vous détailler
chaque écran, corriger une erreur, ou ajouter des fonctionnalités (code-barres, export
Excel, photos des produits, fournisseurs...).
