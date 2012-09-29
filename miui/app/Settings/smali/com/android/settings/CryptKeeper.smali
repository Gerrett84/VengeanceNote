.class public Lcom/android/settings/CryptKeeper;
.super Lcom/android/settings/J;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private hY:Z

.field private hZ:Z

.field private ia:Z

.field private ib:Z

.field private ic:I

.field private ie:Landroid/widget/EditText;

.field private if:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->ib:Z

    .line 117
    iput v0, p0, Lcom/android/settings/CryptKeeper;->if:I

    .line 214
    new-instance v0, Lcom/android/settings/dI;

    invoke-direct {v0, p0}, Lcom/android/settings/dI;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/android/settings/CryptKeeper;->ic:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 554
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 559
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 561
    if-le v1, v4, :cond_1

    .line 587
    :goto_1
    return v4

    .line 562
    :cond_1
    invoke-virtual {p1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    .line 565
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 567
    goto :goto_0

    .line 571
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 572
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 573
    add-int/lit8 v0, v3, 0x1

    :goto_3
    move v3, v0

    goto :goto_2

    .line 576
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 581
    if-gtz v0, :cond_4

    if-eqz p2, :cond_0

    if-le v3, v4, :cond_0

    .line 582
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 583
    goto :goto_0

    .line 587
    :cond_5
    if-gt v1, v4, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_7

    :cond_6
    move v2, v4

    :cond_7
    move v4, v2

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->hY:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->br()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->ia:Z

    return p1
.end method

.method private bl()Z
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bm()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 249
    iget v0, p0, Lcom/android/settings/CryptKeeper;->if:I

    if-lez v0, :cond_1

    .line 250
    const-string v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Counting down to notify user..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/CryptKeeper;->if:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v0, p0, Lcom/android/settings/CryptKeeper;->if:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->if:I

    .line 266
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "CryptKeeper"

    const-string v1, "Notifying user that we are waiting for input..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/high16 v2, 0x42c8

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bn()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f04001d

    .line 341
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->ia:Z

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 343
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bp()V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    const-string v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "progress"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 350
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bo()V

    goto :goto_0

    .line 351
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->hY:Z

    if-nez v1, :cond_5

    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    :cond_5
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 353
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bs()V

    goto :goto_0

    .line 354
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->hZ:Z

    if-nez v1, :cond_1

    .line 356
    new-instance v1, Lcom/android/settings/cz;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/cz;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/dI;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/cz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->hZ:Z

    goto :goto_0
.end method

.method private bo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 400
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 402
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 404
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 405
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 408
    :cond_0
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 410
    iput-boolean v3, p0, Lcom/android/settings/CryptKeeper;->ib:Z

    .line 413
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bq()V

    .line 414
    return-void
.end method

.method private bp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 418
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 422
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    new-instance v1, Lcom/android/settings/dG;

    invoke-direct {v1, p0}, Lcom/android/settings/dG;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 433
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b012a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 435
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_0
    return-void
.end method

.method private bq()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 443
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    const-string v1, "error_partially_encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bp()V

    .line 467
    :goto_0
    return-void

    .line 453
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bl()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x32

    :goto_1
    move v1, v0

    .line 458
    :goto_2
    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 459
    const-string v0, "CryptKeeper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encryption progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 461
    if-eqz v0, :cond_1

    .line 462
    new-array v4, v6, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 453
    :cond_2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    const-string v1, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_2
.end method

.method private br()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 471
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 473
    iget v1, p0, Lcom/android/settings/CryptKeeper;->ic:I

    if-gtz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 476
    iput-boolean v4, p0, Lcom/android/settings/CryptKeeper;->ib:Z

    .line 477
    const v1, 0x7f0b05a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    :goto_0
    return-void

    .line 479
    :cond_0
    const v1, 0x7f0b0127

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 480
    new-array v2, v2, [Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/CryptKeeper;->ic:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget v0, p0, Lcom/android/settings/CryptKeeper;->ic:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->ic:I

    .line 483
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private bs()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    .line 489
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    .line 490
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 493
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 498
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 499
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    .line 502
    const-string v1, "CryptKeeper"

    const-string v2, "Removing the emergency Call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :cond_0
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 508
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 510
    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v3}, Lcom/android/settings/CryptKeeper;->a(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 512
    new-instance v2, Lcom/android/settings/dF;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/dF;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    .line 524
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 526
    if-eqz v1, :cond_2

    .line 527
    const/16 v2, 0x1a

    const-string v3, "CryptKeeper"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 528
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 533
    :cond_2
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/dE;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/dE;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bu()V

    .line 541
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 543
    return-void
.end method

.method private final bt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 643
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 645
    :goto_0
    if-nez v0, :cond_0

    .line 646
    const-string v0, "CryptKeeper"

    const-string v2, "Going into airplane mode."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    .line 652
    :cond_0
    return-void

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 663
    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 668
    new-instance v1, Lcom/android/settings/dD;

    invoke-direct {v1, p0}, Lcom/android/settings/dD;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 682
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 684
    const v1, 0x7f0b0618

    .line 686
    const v2, 0x7f0200d2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 692
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 676
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 688
    :cond_2
    const v1, 0x7f0b0617

    .line 690
    const v2, 0x7f02005f

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private bv()V
    .locals 2

    .prologue
    .line 701
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bw()V

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bx()V

    goto :goto_0
.end method

.method private bw()V
    .locals 4

    .prologue
    .line 709
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_0

    .line 712
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ITelephony service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bx()V
    .locals 2

    .prologue
    .line 720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 723
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 724
    return-void
.end method

.method private by()V
    .locals 2

    .prologue
    .line 730
    const-string v0, "CryptKeeper"

    const-string v1, "User entering password: delay audio notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->if:I

    .line 732
    return-void
.end method

.method static synthetic c(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bn()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bq()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bm()V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bv()V

    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 594
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    .line 596
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private s(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 748
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->ib:Z

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/android/settings/J;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 286
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bl()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 290
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 307
    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 314
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bt()V

    .line 315
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 318
    instance-of v1, v0, Lcom/android/settings/bK;

    if-eqz v1, :cond_1

    .line 319
    check-cast v0, Lcom/android/settings/bK;

    .line 320
    iget-object v0, v0, Lcom/android/settings/bK;->yB:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 321
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/settings/J;->onDestroy()V

    .line 386
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 391
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 603
    if-eqz p2, :cond_0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 605
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 624
    :cond_1
    :goto_0
    return v0

    .line 612
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->ie:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 617
    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->ib:Z

    .line 619
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v3, Lcom/android/settings/dj;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/dj;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/dI;)V

    new-array v4, v1, [Ljava/lang/String;

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/android/settings/dj;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 622
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->by()V

    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 376
    new-instance v0, Lcom/android/settings/bK;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/bK;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 377
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/settings/J;->onStart()V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->bn()V

    .line 334
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/settings/J;->onStop()V

    .line 364
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->by()V

    .line 754
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->by()V

    .line 743
    const/4 v0, 0x0

    return v0
.end method
