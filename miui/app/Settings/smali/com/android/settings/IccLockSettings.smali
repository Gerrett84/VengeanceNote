.class public Lcom/android/settings/IccLockSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/dW;


# instance fields
.field private M:Landroid/content/res/Resources;

.field private jl:I

.field private jm:Ljava/lang/String;

.field private jn:Ljava/lang/String;

.field private jo:Ljava/lang/String;

.field private jp:Ljava/lang/String;

.field private jq:Z

.field private jr:Lcom/android/settings/EditPinPreference;

.field private js:Landroid/preference/CheckBoxPreference;

.field private final jt:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 104
    new-instance v0, Lcom/android/settings/bQ;

    invoke-direct {v0, p0}, Lcom/android/settings/bQ;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/android/settings/bR;

    invoke-direct {v0, p0}, Lcom/android/settings/bR;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jt:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bL()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->r(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->s(Z)V

    return-void
.end method

.method private bL()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->js:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    return-void
.end method

.method private bM()V
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bN()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->bM()V

    goto :goto_0
.end method

.method private bN()V
    .locals 4

    .prologue
    const v3, 0x7f0b02aa

    .line 263
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 264
    const-string v0, ""

    .line 265
    iget v1, p0, Lcom/android/settings/IccLockSettings;->jl:I

    packed-switch v1, :pswitch_data_0

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 290
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->jq:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v3, 0x7f0b02a5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 271
    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v3, 0x7f0b02a6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 273
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 277
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private bO()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->jq:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 357
    return-void
.end method

.method private bP()V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->jn:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->jo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 387
    return-void
.end method

.method private bQ()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    .line 399
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 400
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    .line 401
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bN()V

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 403
    return-void
.end method

.method private r(Z)V
    .locals 2
    .parameter

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->js:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->jq:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bQ()V

    .line 367
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private s(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bQ()V

    .line 381
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private t(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 390
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/EditPinPreference;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 293
    if-nez p2, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bQ()V

    .line 334
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bM()V

    goto :goto_0

    .line 305
    :cond_1
    iget v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 307
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bO()V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jn:Ljava/lang/String;

    .line 311
    iput v3, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 312
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    .line 313
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bM()V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jo:Ljava/lang/String;

    .line 318
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 319
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bM()V

    goto :goto_0

    .line 323
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    const v1, 0x7f0b02ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    .line 325
    iput v3, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 326
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bM()V

    goto :goto_0

    .line 329
    :cond_2
    iput-object v2, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    .line 330
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bP()V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Lcom/android/settings/cu;->jh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->finish()V

    .line 190
    :goto_0
    return-void

    .line 154
    :cond_0
    const v0, 0x7f050046

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 156
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    .line 157
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->js:Landroid/preference/CheckBoxPreference;

    .line 158
    if-eqz p1, :cond_1

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 160
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jm:Ljava/lang/String;

    .line 161
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    .line 162
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->jq:Z

    .line 165
    iget v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/EditPinPreference;->a(Lcom/android/settings/dW;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->M:Landroid/content/res/Resources;

    .line 189
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bL()V

    goto :goto_0

    .line 167
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jn:Ljava/lang/String;

    goto :goto_1

    .line 171
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jn:Ljava/lang/String;

    .line 172
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->jo:Ljava/lang/String;

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jt:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 337
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->js:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->js:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/IccLockSettings;->jq:Z

    .line 341
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->js:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->jq:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    iput v1, p0, Lcom/android/settings/IccLockSettings;->jl:I

    .line 343
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bM()V

    :cond_1
    move v0, v1

    .line 348
    :goto_0
    return v0

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 345
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/IccLockSettings;->jl:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jt:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bM()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->bQ()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->la()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->jl:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jr:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->jq:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    iget v0, p0, Lcom/android/settings/IccLockSettings;->jl:I

    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 235
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->jo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
