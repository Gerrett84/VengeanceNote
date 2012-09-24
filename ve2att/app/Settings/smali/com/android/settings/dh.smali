.class Lcom/android/settings/dh;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# instance fields
.field Im:Landroid/widget/ImageView;

.field In:Landroid/widget/TextView;

.field Io:Lcom/android/settings/MomentView;

.field Ip:Lcom/android/settings/bJ;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Lcom/android/settings/bJ;

    invoke-direct {v0}, Lcom/android/settings/bJ;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    .line 390
    return-void
.end method
