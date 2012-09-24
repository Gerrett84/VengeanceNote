.class public Lcom/android/settings/cN;
.super Lcom/android/settings/aS;
.source "DataUsageSummary.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 1361
    const v0, 0x7f0b05e3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/aS;-><init>(Ljava/lang/CharSequence;)V

    .line 1362
    return-void
.end method
