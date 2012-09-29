.class Lcom/android/settings/dh;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# instance fields
.field Ip:Landroid/widget/ImageView;

.field Iq:Landroid/widget/TextView;

.field Ir:Lcom/android/settings/MomentView;

.field Is:Lcom/android/settings/bJ;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Lcom/android/settings/bJ;

    invoke-direct {v0}, Lcom/android/settings/bJ;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dh;->Is:Lcom/android/settings/bJ;

    .line 390
    return-void
.end method
