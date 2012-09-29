.class Lcom/android/settings/aD;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic mH:Lcom/android/settings/CredentialStorage;

.field private nn:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/aD;->mH:Lcom/android/settings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b052f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 247
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 248
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bL;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/settings/aD;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 252
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/aD;->nn:Z

    .line 253
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-boolean v0, p0, Lcom/android/settings/aD;->nn:Z

    if-eqz v0, :cond_0

    .line 257
    iput-boolean v3, p0, Lcom/android/settings/aD;->nn:Z

    .line 258
    new-instance v0, Lcom/android/settings/bF;

    iget-object v1, p0, Lcom/android/settings/aD;->mH:Lcom/android/settings/CredentialStorage;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/bF;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bL;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/bF;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/aD;->mH:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method
