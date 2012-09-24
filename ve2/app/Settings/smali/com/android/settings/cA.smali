.class public Lcom/android/settings/cA;
.super Lcom/android/settings/aD;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 1332
    const v0, 0x7f0b057b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/aD;-><init>(Ljava/lang/CharSequence;)V

    .line 1333
    return-void
.end method
