.class Lcom/android/settings/vpn2/b;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final dm:Lcom/android/settings/vpn2/c;

.field private final jw:Landroid/security/KeyStore;

.field private mView:Landroid/view/View;

.field private final pR:Landroid/content/DialogInterface$OnClickListener;

.field private rf:Z

.field private rg:Landroid/widget/TextView;

.field private rh:Landroid/widget/Spinner;

.field private ri:Landroid/widget/TextView;

.field private rj:Landroid/widget/TextView;

.field private rk:Landroid/widget/TextView;

.field private rl:Landroid/widget/TextView;

.field private rm:Landroid/widget/TextView;

.field private rn:Landroid/widget/TextView;

.field private ro:Landroid/widget/CheckBox;

.field private rp:Landroid/widget/TextView;

.field private rq:Landroid/widget/TextView;

.field private rr:Landroid/widget/TextView;

.field private rs:Landroid/widget/Spinner;

.field private rt:Landroid/widget/Spinner;

.field private ru:Landroid/widget/Spinner;

.field private rv:Landroid/widget/CheckBox;


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

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->jw:Landroid/security/KeyStore;

    .line 70
    iput-object p2, p0, Lcom/android/settings/vpn2/b;->pR:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    iput-object p3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    .line 72
    iput-boolean p4, p0, Lcom/android/settings/vpn2/b;->rf:Z

    .line 73
    return-void
.end method

.method private K(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    if-nez p1, :cond_2

    .line 251
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rj:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rk:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rg:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->ri:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/vpn2/b;->d(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rn:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn2/b;->d(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_4
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rh:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 271
    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rr:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->rs:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 258
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

.method private U(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f08016f

    const v5, 0x7f08016c

    const v4, 0x7f08016a

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ro:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ro:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 238
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 225
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

.method private a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/vpn2/b;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 303
    if-nez p3, :cond_2

    const-string v0, ""

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/b;->jw:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 306
    if-eqz v4, :cond_0

    array-length v1, v4

    if-nez v1, :cond_3

    .line 307
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v5

    move-object v0, v1

    .line 315
    :goto_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 317
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 318
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v1, v2

    .line 320
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 321
    aget-object v2, v0, v1

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 326
    :cond_1
    return-void

    .line 303
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_3
    array-length v1, v4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 310
    aput-object v0, v1, v5

    .line 311
    array-length v0, v4

    invoke-static {v4, v5, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 312
    goto :goto_1

    .line 320
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private d(Ljava/lang/String;Z)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 276
    :try_start_0
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 277
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 282
    :cond_1
    if-eqz p2, :cond_4

    .line 283
    const-string v4, "/"

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 284
    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 285
    const/4 v8, 0x1

    aget-object v2, v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 287
    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 288
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

    .line 290
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

    .line 298
    :cond_2
    :goto_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 295
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v4, v2

    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method Y()Lcom/android/settings/vpn2/c;
    .locals 2

    .prologue
    .line 334
    new-instance v1, Lcom/android/settings/vpn2/c;

    iget-object v0, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v0, v0, Lcom/android/settings/vpn2/c;->key:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/settings/vpn2/c;-><init>(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rh:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lcom/android/settings/vpn2/c;->type:I

    .line 337
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ri:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->ye:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rj:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yf:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rk:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rl:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yh:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yg:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    .line 345
    iget v0, v1, Lcom/android/settings/vpn2/c;->type:I

    packed-switch v0, :pswitch_data_0

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rv:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/vpn2/c;->yp:Z

    .line 377
    return-object v1

    .line 347
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ro:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings/vpn2/c;->yi:Z

    goto :goto_0

    .line 351
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yj:Ljava/lang/String;

    .line 354
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yk:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rr:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yl:Ljava/lang/String;

    goto :goto_0

    .line 359
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rp:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yj:Ljava/lang/String;

    .line 362
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rs:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rs:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->ym:Ljava/lang/String;

    .line 367
    :cond_1
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rt:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rt:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yn:Ljava/lang/String;

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ru:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ru:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/vpn2/c;->yo:Ljava/lang/String;

    goto :goto_0

    .line 345
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
    .line 187
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/b;->rf:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/b;->K(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    return-void
.end method

.method eu()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->rf:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
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

    const v3, 0x7f04007e

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

    const v3, 0x7f080071

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rg:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080167

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rh:Landroid/widget/Spinner;

    .line 86
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080168

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->ri:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08017a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rj:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08017b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rk:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080176

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rl:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080177

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rm:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080178

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rn:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080169

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->ro:Landroid/widget/CheckBox;

    .line 93
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08016b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rp:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08016d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rq:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08016e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rr:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080170

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rs:Landroid/widget/Spinner;

    .line 97
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080172

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rt:Landroid/widget/Spinner;

    .line 98
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f080173

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->ru:Landroid/widget/Spinner;

    .line 99
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v3, 0x7f08017c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/vpn2/b;->rv:Landroid/widget/CheckBox;

    .line 102
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rh:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget v3, v3, Lcom/android/settings/vpn2/c;->type:I

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ri:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->ye:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rj:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->yf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rk:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->password:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rl:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->yh:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->yg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ro:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-boolean v3, v3, Lcom/android/settings/vpn2/c;->yi:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->yj:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->yk:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rr:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v3, v3, Lcom/android/settings/vpn2/c;->yl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rs:Landroid/widget/Spinner;

    const-string v3, "USRCERT_"

    iget-object v5, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v5, v5, Lcom/android/settings/vpn2/c;->ym:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1, v5}, Lcom/android/settings/vpn2/b;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rt:Landroid/widget/Spinner;

    const-string v3, "CACERT_"

    const v5, 0x7f0b05b9

    iget-object v6, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v6, v6, Lcom/android/settings/vpn2/c;->yn:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/vpn2/b;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ru:Landroid/widget/Spinner;

    const-string v3, "USRCERT_"

    const v5, 0x7f0b05ba

    iget-object v6, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v6, v6, Lcom/android/settings/vpn2/c;->yo:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/settings/vpn2/b;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rv:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-boolean v3, v3, Lcom/android/settings/vpn2/c;->yp:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rh:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->ri:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rj:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rr:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rs:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 134
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/b;->K(Z)Z

    move-result v3

    .line 135
    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->rf:Z

    if-nez v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/vpn2/b;->rf:Z

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->rf:Z

    if-eqz v0, :cond_3

    .line 138
    const v0, 0x7f0b05be

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->setTitle(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v2, 0x7f080166

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget v0, v0, Lcom/android/settings/vpn2/c;->type:I

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/b;->U(I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v2, 0x7f080174

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v2, v2, Lcom/android/settings/vpn2/c;->yh:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v2, v2, Lcom/android/settings/vpn2/c;->yg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v2, v2, Lcom/android/settings/vpn2/c;->routes:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :goto_1
    const v0, 0x7f0b05bc

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v0, v2}, Lcom/android/settings/vpn2/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    :goto_2
    const/4 v0, -0x2

    const v2, 0x7f0b05bb

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/vpn2/b;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v2, v4}, Lcom/android/settings/vpn2/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 174
    invoke-super {p0, v8}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0, v7}, Lcom/android/settings/vpn2/b;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings/vpn2/b;->rf:Z

    if-eqz v0, :cond_4

    move v0, v3

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/vpn2/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 183
    return-void

    :cond_1
    move v0, v1

    .line 135
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 159
    :cond_3
    const v0, 0x7f0b05bf

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/vpn2/b;->dm:Lcom/android/settings/vpn2/c;

    iget-object v5, v5, Lcom/android/settings/vpn2/c;->name:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->mView:Landroid/view/View;

    const v2, 0x7f080179

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const v0, 0x7f0b05bd

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/b;->pR:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v0, v2}, Lcom/android/settings/vpn2/b;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 177
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/b;->K(Z)Z

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
    .line 206
    iget-object v0, p0, Lcom/android/settings/vpn2/b;->rh:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 207
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/b;->U(I)V

    .line 209
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/b;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/b;->rf:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/b;->K(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    return-void
.end method
