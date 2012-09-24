.class Lcom/android/settings/R;
.super Ljava/lang/Object;
.source "UsageStatsActivity.java"


# instance fields
.field dC:Ljava/lang/String;

.field dD:Ljava/util/ArrayList;

.field final synthetic dE:Lcom/android/settings/bA;


# direct methods
.method constructor <init>(Lcom/android/settings/bA;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/R;->dE:Lcom/android/settings/bA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/R;->dD:Ljava/util/ArrayList;

    return-void
.end method
