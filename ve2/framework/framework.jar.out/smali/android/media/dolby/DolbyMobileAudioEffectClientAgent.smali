.class public Landroid/media/dolby/DolbyMobileAudioEffectClientAgent;
.super Ljava/lang/Object;
.source "DolbyMobileAudioEffectClientAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public bindToRemoteRunningService(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 15
    return-void
.end method

.method public getDolyPresetCategory()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    return v0
.end method

.method public registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 21
    return-void
.end method

.method public setDolyPresetCategory(I)I
    .locals 1
    .parameter "presetCategory"

    .prologue
    .line 28
    const/4 v0, -0x1

    return v0
.end method

.method public unBindFromRemoteRunningService(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 18
    return-void
.end method
