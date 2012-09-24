.class Lcom/android/settings/dH;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Gl:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic KG:Lcom/android/settings/af;

.field final synthetic KH:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/af;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings/dH;->Gl:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/dH;->KG:Lcom/android/settings/af;

    iput-object p3, p0, Lcom/android/settings/dH;->KH:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/dH;->Gl:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings/dH;->KG:Lcom/android/settings/af;

    invoke-static {v1}, Lcom/android/settings/af;->f(Lcom/android/settings/af;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dH;->KG:Lcom/android/settings/af;

    invoke-static {v1, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->b(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/af;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 365
    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/bc;

    invoke-direct {v2, p0}, Lcom/android/settings/bc;-><init>(Lcom/android/settings/dH;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    const v1, 0x1040009

    new-instance v2, Lcom/android/settings/be;

    invoke-direct {v2, p0}, Lcom/android/settings/be;-><init>(Lcom/android/settings/dH;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void
.end method
