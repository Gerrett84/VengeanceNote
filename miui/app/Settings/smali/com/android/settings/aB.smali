.class Lcom/android/settings/aB;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mD:Z

.field private final mE:Landroid/widget/Button;

.field private final mF:Landroid/widget/TextView;

.field private final mG:Landroid/widget/TextView;

.field final synthetic mH:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 388
    iput-object p1, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const v0, 0x7f040018

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 392
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->b(Lcom/android/settings/CredentialStorage;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 393
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b052d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    .line 402
    :goto_0
    const v0, 0x7f08002b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const v0, 0x7f08002e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/aB;->mF:Landroid/widget/TextView;

    .line 404
    iget-object v0, p0, Lcom/android/settings/aB;->mF:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/aB;->mF:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 406
    const v0, 0x7f08002c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/aB;->mG:Landroid/widget/TextView;

    .line 408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b052c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 414
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 415
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 416
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/aB;->mE:Landroid/widget/Button;

    .line 417
    iget-object v0, p0, Lcom/android/settings/aB;->mE:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 418
    return-void

    .line 394
    :cond_0
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->b(Lcom/android/settings/CredentialStorage;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 395
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0531

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->b(Lcom/android/settings/CredentialStorage;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 397
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0532

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 399
    :cond_2
    const v0, 0x7f0b0533

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->b(Lcom/android/settings/CredentialStorage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bL;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/settings/aB;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/settings/aB;->mE:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/aB;->mF:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/aB;->mF:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 422
    return-void

    .line 421
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 431
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/aB;->mD:Z

    .line 432
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 435
    iget-boolean v0, p0, Lcom/android/settings/aB;->mD:Z

    if-eqz v0, :cond_3

    .line 436
    iput-boolean v2, p0, Lcom/android/settings/aB;->mD:Z

    .line 437
    iget-object v0, p0, Lcom/android/settings/aB;->mG:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/aB;->mF:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 439
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 440
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;I)I

    .line 442
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0b0536

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 447
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->c(Lcom/android/settings/CredentialStorage;)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 449
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;I)I

    .line 450
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0b0534

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 454
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->d(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 455
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;I)I

    .line 458
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->d(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 462
    :cond_3
    iget-object v0, p0, Lcom/android/settings/aB;->mH:Lcom/android/settings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    return-void
.end method
