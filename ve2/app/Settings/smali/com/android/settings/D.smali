.class Lcom/android/settings/D;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# instance fields
.field db:Ljava/lang/String;

.field dc:Ljava/util/ArrayList;

.field final synthetic dd:Lcom/android/settings/bo;


# direct methods
.method constructor <init>(Lcom/android/settings/bo;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/D;->dd:Lcom/android/settings/bo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/D;->dc:Ljava/util/ArrayList;

    return-void
.end method
