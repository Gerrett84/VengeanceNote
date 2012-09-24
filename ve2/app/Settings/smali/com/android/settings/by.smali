.class Lcom/android/settings/by;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# instance fields
.field mItems:Ljava/util/ArrayList;

.field vA:Landroid/widget/LinearLayout;

.field vB:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/by;->vB:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/by;->mItems:Ljava/util/ArrayList;

    .line 395
    return-void
.end method
