.class Lcom/android/settings/cP;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# instance fields
.field Ev:Landroid/widget/ImageView;

.field Ew:Landroid/widget/TextView;

.field Ex:Lcom/android/settings/MomentView;

.field Ey:Lcom/android/settings/by;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 388
    new-instance v0, Lcom/android/settings/by;

    invoke-direct {v0}, Lcom/android/settings/by;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cP;->Ey:Lcom/android/settings/by;

    .line 390
    return-void
.end method
