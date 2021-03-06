.class Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ICON_IDS:[I

.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    const/4 v1, 0x3

    .line 599
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 588
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 590
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ICON_IDS:[I

    .line 600
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 601
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 602
    return-void

    .line 588
    nop

    :array_0
    .array-data 0x4
        0x29t 0x0t 0xbt 0x6t
        0x2at 0x0t 0xbt 0x6t
        0x2bt 0x0t 0xbt 0x6t
    .end array-data

    .line 590
    :array_1
    .array-data 0x4
        0x19t 0x1t 0x2t 0x6t
        0x17t 0x1t 0x2t 0x6t
        0x18t 0x1t 0x2t 0x6t
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 611
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 606
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 616
    const v4, 0x6030022

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 618
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v2

    .line 619
    .local v2, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 620
    iget-object v4, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 621
    .local v1, itemView:Landroid/widget/LinearLayout;
    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 623
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 624
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->ICON_IDS:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 621
    goto :goto_1

    .line 627
    .end local v1           #itemView:Landroid/widget/LinearLayout;
    :cond_1
    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 654
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 652
    .local v0, index:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 653
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method
