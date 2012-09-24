.class public Lcom/android/settings/CryptKeeper$FadeToBlack;
.super Landroid/app/Activity;
.source "CryptKeeper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper$FadeToBlack;->setContentView(I)V

    .line 138
    return-void
.end method
