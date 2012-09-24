.class Lcom/android/settings/vpn2/b;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final dX:Lcom/android/settings/vpn2/c;

.field private final kK:Landroid/security/KeyStore;

.field private mView:Landroid/view/View;

.field private final se:Landroid/content/DialogInterface$OnClickListener;

.field private tA:Landroid/widget/Spinner;

.field private tB:Landroid/widget/Spinner;

.field private tC:Landroid/widget/CheckBox;

.field private tm:Z

.field private tn:Landroid/widget/TextView;

.field private to:Landroid/widget/Spinner;

.field private tp:Landroid/widget/TextView;

.field private tq:Landroid/widget/TextView;

.field private tr:Landroid/widget/TextView;

.field private ts:Landroid/widget/TextView;

.field private tt:Landroid/widget/TextView;

.field private tu:Landroid/widget/TextView;

.field private tv:Landroid/widget/CheckBox;

.field private tw:Landroid/widget/TextView;

.field private tx:Landroid/widget/TextView;

.field private ty:Landroid/widget/TextView;

.field private tz:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/c;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->kK:Landroid/security/KeyStore;

    .line 70
    iput-object p2, p0, Lcom/android/settings/vpn2/b;->se:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    iput-object p3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    .line 72
    iput-boolean p4, p0, Lcom/android/settings/vpn2/b;->tm:Z

    .line 73
    return-void
.end method

.method private H(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    if-nez p1, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->tq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->tr:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 253
    goto :goto_0

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->tn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->tp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->tt:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/vpn2/b;->c(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->tu:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn2/b;->c(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :cond_4
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->to:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 273
    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->ty:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->tz:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/vpn2/b;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 305
    if-nez p3, :cond_2

    const-string v0, ""

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/b;->kK:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 308
    if-eqz v4, :cond_0

    array-length v1, v4

    if-nez v1, :cond_3

    .line 309
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v5

    move-object v0, v1

    .line 317
    :goto_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 319
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 320
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v2

    .line 322
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 323
    aget-object v2, v0, v1

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 328
    :cond_1
    return-void

    .line 305
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_3
    array-length v1, v4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 312
    aput-object v0, v1, v5

    .line 313
    array-length v0, v4

    invoke-static {v4, v5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 314
    goto :goto_1

    .line 322
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private af(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f080193

    const v5, 0x7f080190

    const v4, 0x7f08018e

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tv:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v1, 0x7f080195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tv:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v1, 0x7f080195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private c(Ljava/lang/String;Z)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 278
    :try_start_0
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 279
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 284
    :cond_1
    if-eqz p2, :cond_4

    .line 285
    const-string v4, "/"

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 286
    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 287
    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 289
    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 290
    const/4 v8, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x2

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    .line 292
    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x4

    if-ne v4, v9, :cond_2

    if-ltz v2, :cond_2

    if-gt v2, v3, :cond_2

    if-ge v2, v3, :cond_0

    shl-int v2, v8, v2

    if-eqz v2, :cond_0

    .line 300
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 297
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v4, v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method ad()Lcom/android/settings/vpn2/c;
    .locals 2

    .prologue
    .line 336
    new-instance v1, Lcom/android/settings/vpn2/c;

    iget-object v0, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/settings/vpn2/c;-><init>(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->to:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/android/settings/vpn2/c;->type:I

    .line 339
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->Bz:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ts:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BB:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BA:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    .line 347
    iget v0, v1, Lcom/android/settings/vpn2/c;->type:I

    packed-switch v0, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tC:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/vpn2/c;->BJ:Z

    .line 379
    return-object v1

    .line 349
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tv:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/vpn2/c;->BC:Z

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tw:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BD:Ljava/lang/String;

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tx:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BE:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ty:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BF:Ljava/lang/String;

    goto :goto_0

    .line 361
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tw:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BD:Ljava/lang/String;

    .line 364
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tz:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BG:Ljava/lang/String;

    .line 369
    :cond_1
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tA:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tA:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BH:Ljava/lang/String;

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tB:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tB:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->BI:Ljava/lang/String;

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/b;->tm:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/b;->H(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    return-void
.end method

.method fw()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->tm:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/vpn2/b;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04008c

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->setView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/b;->setInverseBackgroundForced(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/vpn2/b;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 84
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08006c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tn:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08018b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->to:Landroid/widget/Spinner;

    .line 86
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08018c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tp:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08019e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tq:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08019f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tr:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08019a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->ts:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08019b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tt:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08019c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tu:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08018d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tv:Landroid/widget/CheckBox;

    .line 93
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08018f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tw:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080191

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tx:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080192

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->ty:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080194

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tz:Landroid/widget/Spinner;

    .line 97
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080196

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tA:Landroid/widget/Spinner;

    .line 98
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080197

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tB:Landroid/widget/Spinner;

    .line 99
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f0801a0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->tC:Landroid/widget/CheckBox;

    .line 102
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->to:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget v3, v3, Lcom/android/settings/vpn2/c;->type:I

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->By:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-boolean v0, v0, Lcom/android/settings/vpn2/c;->BJ:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->Bz:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tr:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ts:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->BB:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tt:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->BA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tu:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tv:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-boolean v3, v3, Lcom/android/settings/vpn2/c;->BC:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tw:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->BD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tx:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->BE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ty:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->BF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tz:Landroid/widget/Spinner;

    const-string v3, "USRPKEY_"

    iget-object v5, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v5, v5, Lcom/android/settings/vpn2/c;->BG:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1, v5}, Lcom/android/settings/vpn2/b;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tA:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    const v5, 0x7f0b062b

    iget-object v6, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v6, v6, Lcom/android/settings/vpn2/c;->BH:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/vpn2/b;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tB:Landroid/widget/Spinner;

    const-string v3, "USRCERT_"

    const v5, 0x7f0b062c

    iget-object v6, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v6, v6, Lcom/android/settings/vpn2/c;->BI:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/vpn2/b;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tC:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-boolean v3, v3, Lcom/android/settings/vpn2/c;->BJ:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->to:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tr:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ty:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->tz:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/b;->H(Z)Z

    move-result v3

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->tm:Z

    if-nez v0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/vpn2/b;->tm:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->tm:Z

    if-eqz v0, :cond_4

    .line 140
    const v0, 0x7f0b0630

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->setTitle(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v2, 0x7f08018a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget v0, v0, Lcom/android/settings/vpn2/c;->type:I

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/b;->af(I)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v2, 0x7f080198

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v2, v2, Lcom/android/settings/vpn2/c;->BB:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v2, v2, Lcom/android/settings/vpn2/c;->BA:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v2, v2, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :goto_1
    const v0, 0x7f0b062e

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v0, v2}, Lcom/android/settings/vpn2/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 172
    :goto_2
    const/4 v0, -0x2

    const v2, 0x7f0b062d

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/vpn2/b;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/settings/vpn2/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 176
    invoke-super {p0, v8}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0, v7}, Lcom/android/settings/vpn2/b;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->tm:Z

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/vpn2/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 185
    return-void

    :cond_2
    move v0, v1

    .line 137
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 161
    :cond_4
    const v0, 0x7f0b0631

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/vpn2/b;->dX:Lcom/android/settings/vpn2/c;

    iget-object v5, v5, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v2, 0x7f08019d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    const v0, 0x7f0b062f

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->se:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v0, v2}, Lcom/android/settings/vpn2/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 179
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/b;->H(Z)Z

    move-result v0

    goto :goto_3
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->to:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 209
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/b;->af(I)V

    .line 211
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/b;->tm:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/b;->H(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    return-void
.end method
