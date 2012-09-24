.class public Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPattern.java"


# instance fields
.field private oX:Lmiui/widget/LockPatternView;

.field private pf:Ljava/lang/Runnable;

.field protected rR:Lmiui/security/MiuiLockPatternUtils;

.field private rS:I

.field private rT:Landroid/os/CountDownTimer;

.field private rU:Landroid/widget/TextView;

.field private rV:Landroid/widget/TextView;

.field protected rW:Ljava/lang/CharSequence;

.field protected rX:Ljava/lang/CharSequence;

.field private rY:Ljava/lang/CharSequence;

.field private rZ:Ljava/lang/CharSequence;

.field private sa:Lmiui/widget/LockPatternView$OnPatternListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 229
    new-instance v0, Lcom/android/settings/bX;

    invoke-direct {v0, p0}, Lcom/android/settings/bX;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->pf:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/android/settings/bY;

    invoke-direct {v0, p0}, Lcom/android/settings/bY;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->sa:Lmiui/widget/LockPatternView$OnPatternListener;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rS:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiui/widget/LockPatternView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->o(J)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->pf:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rS:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->dX()V

    return-void
.end method

.method private dX()V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->pf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 239
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->pf:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lmiui/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method

.method static synthetic e(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rU:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rV:Landroid/widget/TextView;

    return-object v0
.end method

.method private o(J)V
    .locals 6
    .parameter

    .prologue
    .line 282
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->Eh:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 284
    new-instance v0, Lcom/android/settings/bZ;

    sub-long v2, p1, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bZ;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/bZ;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rT:Landroid/os/CountDownTimer;

    .line 303
    return-void
.end method


# virtual methods
.method protected M()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rR:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->savedPatternExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 344
    :cond_0
    return-void
.end method

.method protected N()I
    .locals 1

    .prologue
    .line 307
    const v0, 0x7f0b035c

    return v0
.end method

.method protected O()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rR:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method protected P()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rR:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    if-eqz p1, :cond_0

    .line 349
    const-string v0, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rW:Ljava/lang/CharSequence;

    .line 350
    const-string v0, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rX:Ljava/lang/CharSequence;

    .line 351
    const-string v0, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rY:Ljava/lang/CharSequence;

    .line 352
    const-string v0, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rZ:Ljava/lang/CharSequence;

    .line 354
    :cond_0
    return-void
.end method

.method protected a(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 187
    sget-object v0, Lcom/android/settings/cc;->zP:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rW:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rW:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rX:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rX:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->P()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->setInStealthMode(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lmiui/widget/LockPatternView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rU:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rV:Landroid/widget/TextView;

    const v1, 0x7f0b035d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rY:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rZ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rZ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lmiui/widget/LockPatternView;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->enableInput()V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rU:Landroid/widget/TextView;

    const v1, 0x7f0b035e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rV:Landroid/widget/TextView;

    const v1, 0x7f0b035f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->clearPattern()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 323
    const-string v1, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 328
    return-void
.end method

.method protected checkPattern(Ljava/util/List;)Z
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rR:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0, p1}, Lmiui/security/MiuiLockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rR:Lmiui/security/MiuiLockPatternUtils;

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const v0, 0x7f040019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    const v0, 0x7f080023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rU:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f080029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    .line 130
    const v0, 0x7f08002a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rV:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f080028

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 136
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->O()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->sa:Lmiui/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v2}, Lmiui/widget/LockPatternView;->setOnPatternListener(Lmiui/widget/LockPatternView$OnPatternListener;)V

    .line 143
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->Ef:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 145
    if-eqz p3, :cond_0

    .line 146
    const-string v0, "num_wrong_attempts"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rS:I

    .line 150
    :goto_0
    return-object v1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->M()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rT:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rT:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 166
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rR:Lmiui/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Lmiui/security/MiuiLockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 174
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->o(J)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->oX:Lmiui/widget/LockPatternView;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rS:I

    .line 180
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->Ef:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->rS:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    return-void
.end method
