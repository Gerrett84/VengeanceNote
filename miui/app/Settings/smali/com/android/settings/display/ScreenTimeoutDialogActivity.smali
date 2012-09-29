.class public Lcom/android/settings/display/ScreenTimeoutDialogActivity;
.super Landroid/app/Activity;
.source "ScreenTimeoutDialogActivity.java"


# instance fields
.field private gu:[Ljava/lang/CharSequence;

.field private gv:[Ljava/lang/CharSequence;

.field private gw:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gv:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private aR()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    .line 41
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 43
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    move-wide v1, v0

    .line 44
    :goto_0
    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    .line 65
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v1, v3

    .line 43
    goto :goto_0

    .line 47
    :cond_2
    iget-object v3, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gu:[Ljava/lang/CharSequence;

    .line 48
    iget-object v4, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gv:[Ljava/lang/CharSequence;

    .line 49
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const/4 v0, 0x0

    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_4

    .line 52
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 53
    cmp-long v7, v7, v1

    if-gtz v7, :cond_3

    .line 54
    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v3, v3

    if-ne v0, v3, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v3, v4

    if-eq v0, v3, :cond_0

    .line 59
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gu:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gv:[Ljava/lang/CharSequence;

    .line 61
    iget-wide v3, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gw:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 62
    iput-wide v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gw:J

    goto :goto_1
.end method

.method private aS()V
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gw:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    const v2, 0x7f0b028c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gu:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/display/f;

    invoke-direct {v3, p0}, Lcom/android/settings/display/f;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    const/high16 v0, 0x104

    new-instance v2, Lcom/android/settings/display/e;

    invoke-direct {v2, p0}, Lcom/android/settings/display/e;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    new-instance v0, Lcom/android/settings/display/d;

    invoke-direct {v0, p0}, Lcom/android/settings/display/d;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gv:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gv:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gv:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    :goto_1
    return v0

    .line 107
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gu:[Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gv:[Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->gw:J

    .line 36
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->aR()V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->aS()V

    .line 38
    return-void
.end method
