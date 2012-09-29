.class public Lcom/android/settings/wifi/q;
.super Landroid/app/AlertDialog;
.source "WapiCertMgmtDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final fY:Ljava/lang/String;


# instance fields
.field private fL:Landroid/widget/TextView;

.field private fM:Landroid/widget/EditText;

.field private fN:Landroid/widget/TextView;

.field private fO:Landroid/widget/EditText;

.field private fP:Landroid/widget/TextView;

.field private fQ:Landroid/widget/EditText;

.field private fR:Landroid/widget/TextView;

.field private fS:Landroid/widget/Spinner;

.field private fT:Ljava/lang/String;

.field private fU:Ljava/lang/CharSequence;

.field private fV:I

.field private fW:I

.field private fX:I

.field private mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/q;->fY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7fffffff

    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/q;->mMode:I

    .line 69
    iput v1, p0, Lcom/android/settings/wifi/q;->fV:I

    .line 70
    iput v1, p0, Lcom/android/settings/wifi/q;->fW:I

    .line 71
    iput v1, p0, Lcom/android/settings/wifi/q;->fX:I

    .line 81
    return-void
.end method

.method private a(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 411
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    if-lez p1, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings/wifi/q;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    :cond_0
    if-lez p3, :cond_1

    .line 146
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/android/settings/wifi/q;->setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    :cond_1
    if-lez p2, :cond_2

    .line 150
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/android/settings/wifi/q;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    :cond_2
    return-void
.end method

.method private aF()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 90
    .line 94
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/q;->setInverseBackgroundForced(Z)V

    .line 96
    iget v1, p0, Lcom/android/settings/wifi/q;->mMode:I

    if-nez v1, :cond_0

    .line 97
    const v1, 0x7f040099

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/q;->p(I)V

    .line 98
    const v1, 0x7f0b070c

    .line 99
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/wifi/q;->fV:I

    .line 105
    :goto_0
    const v2, 0x7f0b070e

    .line 106
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/settings/wifi/q;->fX:I

    .line 108
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/wifi/q;->a(III)V

    .line 109
    return-void

    .line 100
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/q;->mMode:I

    if-ne v1, v2, :cond_1

    .line 101
    const v1, 0x7f04009a

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/q;->p(I)V

    .line 102
    const v1, 0x7f0b070d

    .line 103
    const/4 v2, -0x3

    iput v2, p0, Lcom/android/settings/wifi/q;->fW:I

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private aG()V
    .locals 10

    .prologue
    const v5, 0x1010355

    const/4 v9, -0x1

    const/4 v8, 0x0

    const v7, 0x7f0b031d

    const v6, 0x104000a

    .line 166
    const-string v0, "/data/wapi_certificate"

    .line 167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cert. base dir create failed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 315
    :goto_0
    return-void

    .line 179
    :cond_0
    const/16 v1, 0x1ff

    invoke-static {v0, v1, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/q;->fM:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0714

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 192
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/wapi_certificate/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0715

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0716

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/q;->fO:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/q;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 217
    :cond_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0717

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_7
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings/wifi/q;->fY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    .line 229
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0718

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 235
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings/wifi/q;->fY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/q;->m(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0719

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 245
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_9
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "as.cer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 256
    invoke-static {v2, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 257
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v4

    .line 253
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 261
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/q;->fQ:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/q;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    .line 266
    if-eqz v1, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 267
    :cond_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b071b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 273
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :cond_d
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings/wifi/q;->fY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    .line 278
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b071c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 284
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/settings/wifi/q;->fY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/q;->n(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 288
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b071a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 294
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_f
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user.cer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 304
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 305
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :catch_1
    move-exception v3

    .line 301
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 309
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_11
    const/16 v1, 0x1c7

    invoke-static {v0, v1, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user.cer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x124

    invoke-static {v1, v2, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "as.cer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x124

    invoke-static {v0, v1, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto/16 :goto_0
.end method

.method private aH()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "handleUninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/settings/wifi/q;->fT:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/settings/wifi/q;->fT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    .line 419
    :cond_0
    return-void
.end method

.method private aI()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/wapi_certificate"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 432
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 433
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v3, v1, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 439
    const v0, 0x1090009

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/q;->fS:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_1
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private aJ()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/settings/wifi/q;->fS:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 449
    return v0
.end method

.method private aK()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget v0, p0, Lcom/android/settings/wifi/q;->mMode:I

    if-nez v0, :cond_1

    .line 119
    const v0, 0x7f080208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fL:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f080209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fM:Landroid/widget/EditText;

    .line 122
    const v0, 0x7f08020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fN:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f08020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fO:Landroid/widget/EditText;

    .line 125
    const v0, 0x7f08020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fP:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f08020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fQ:Landroid/widget/EditText;

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/q;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    const v0, 0x7f08020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fR:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f08020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fS:Landroid/widget/Spinner;

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/q;->fS:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/wifi/q;->aI()V

    goto :goto_0
.end method

.method private m(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 329
    const-string v2, "BEGIN CERTIFICATE"

    .line 330
    const-string v3, "END CERTIFICATE"

    .line 331
    const-string v4, "BEGIN EC PRIVATE KEY"

    .line 332
    const-string v5, "END EC PRIVATE KEY"

    .line 333
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    :try_start_0
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v1, v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-ne v1, v2, :cond_0

    .line 351
    :try_start_2
    invoke-virtual {p0, v4, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-nez v2, :cond_0

    .line 359
    :try_start_3
    invoke-virtual {p0, v5, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 366
    goto :goto_0

    .line 346
    :catch_1
    move-exception v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 354
    :catch_2
    move-exception v1

    .line 355
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :catch_3
    move-exception v1

    .line 363
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private n(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 370
    const-string v2, "BEGIN CERTIFICATE"

    .line 371
    const-string v3, "END CERTIFICATE"

    .line 372
    const-string v4, "BEGIN EC PRIVATE KEY"

    .line 373
    const-string v5, "END EC PRIVATE KEY"

    .line 374
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    :try_start_0
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v1, v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 384
    :cond_1
    :try_start_1
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-ne v1, v2, :cond_0

    .line 392
    :try_start_2
    invoke-virtual {p0, v4, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-ne v1, v2, :cond_0

    .line 400
    :try_start_3
    invoke-virtual {p0, v5, v6}, Lcom/android/settings/wifi/q;->a(Ljava/lang/String;Ljava/io/File;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 407
    goto :goto_0

    .line 387
    :catch_1
    move-exception v1

    .line 388
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :catch_2
    move-exception v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :catch_3
    move-exception v1

    .line 404
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private o(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 470
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    const-string v0, "WapiCertMgmtDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAll filepath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 475
    array-length v3, v2

    .line 477
    if-nez v3, :cond_2

    .line 478
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 485
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    .line 481
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 482
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/q;->o(Ljava/lang/String;)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private p(I)V
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/q;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/q;->setView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/q;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->c(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method private q(I)V
    .locals 2
    .parameter

    .prologue
    .line 456
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/wapi_certificate"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 462
    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/q;->fT:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/q;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 318
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 319
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v1, 0x800

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 320
    const-string v1, ""

    .line 321
    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 323
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 155
    const-string v0, "WapiCertMgmtDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick which "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v0, p0, Lcom/android/settings/wifi/q;->fV:I

    if-ne p2, v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/settings/wifi/q;->aG()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/q;->fW:I

    if-ne p2, v0, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/android/settings/wifi/q;->aH()V

    goto :goto_0

    .line 160
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/q;->fX:I

    if-ne p2, v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/settings/wifi/q;->aK()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 496
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onClick View "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/q;->aF()V

    .line 86
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 504
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onItemSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/android/settings/wifi/q;->fS:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/android/settings/wifi/q;->aJ()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/q;->q(I)V

    .line 508
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter

    .prologue
    .line 500
    const-string v0, "WapiCertMgmtDialog"

    const-string v1, "onNothingSelected "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/android/settings/wifi/q;->mMode:I

    .line 136
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/settings/wifi/q;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/q;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 513
    iput-object p1, p0, Lcom/android/settings/wifi/q;->fU:Ljava/lang/CharSequence;

    .line 514
    return-void
.end method
