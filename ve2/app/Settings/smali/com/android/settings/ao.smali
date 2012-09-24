.class Lcom/android/settings/ao;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private lo:Z

.field private final lp:Landroid/widget/Button;

.field private final lq:Landroid/widget/TextView;

.field private final lr:Landroid/widget/TextView;

.field final synthetic ls:Lcom/android/settings/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/CredentialStorage;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 362
    iput-object p1, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const v0, 0x7f04001a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 366
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->b(Lcom/android/settings/CredentialStorage;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    .line 376
    :goto_0
    const v0, 0x7f080031

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const v0, 0x7f080034

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ao;->lq:Landroid/widget/TextView;

    .line 378
    iget-object v0, p0, Lcom/android/settings/ao;->lq:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/ao;->lq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 380
    const v0, 0x7f080032

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ao;->lr:Landroid/widget/TextView;

    .line 382
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b04e4

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

    .line 388
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 390
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ao;->lp:Landroid/widget/Button;

    .line 391
    iget-object v0, p0, Lcom/android/settings/ao;->lp:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    return-void

    .line 368
    :cond_0
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->b(Lcom/android/settings/CredentialStorage;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 369
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {p1}, Lcom/android/settings/CredentialStorage;->b(Lcom/android/settings/CredentialStorage;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 373
    :cond_2
    const v0, 0x7f0b04eb

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

.method synthetic constructor <init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/bA;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/settings/ao;-><init>(Lcom/android/settings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/settings/ao;->lp:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ao;->lq:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ao;->lq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    return-void

    .line 395
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
    .line 399
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 405
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ao;->lo:Z

    .line 406
    return-void

    .line 405
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

    .line 409
    iget-boolean v0, p0, Lcom/android/settings/ao;->lo:Z

    if-eqz v0, :cond_3

    .line 410
    iput-boolean v2, p0, Lcom/android/settings/ao;->lo:Z

    .line 411
    iget-object v0, p0, Lcom/android/settings/ao;->lr:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ao;->lq:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 413
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 414
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;I)I

    .line 416
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0b04ee

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 421
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->c(Lcom/android/settings/CredentialStorage;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;I)I

    .line 424
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    const v1, 0x7f0b04ec

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->d(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 429
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/android/settings/CredentialStorage;->a(Lcom/android/settings/CredentialStorage;I)I

    .line 432
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings/CredentialStorage;->d(Lcom/android/settings/CredentialStorage;)V

    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ao;->ls:Lcom/android/settings/CredentialStorage;

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
    .line 402
    return-void
.end method
