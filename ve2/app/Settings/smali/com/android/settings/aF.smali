.class public Lcom/android/settings/aF;
.super Ljava/lang/Object;
.source "UsageDataManager.java"


# instance fields
.field db:Ljava/lang/String;

.field lY:Ljava/lang/String;

.field lZ:Ljava/lang/Long;

.field final synthetic or:Lcom/android/settings/w;


# direct methods
.method constructor <init>(Lcom/android/settings/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/aF;->or:Lcom/android/settings/w;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/settings/aF;->db:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/settings/aF;->lY:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/android/settings/aF;->lZ:Ljava/lang/Long;

    .line 29
    return-void
.end method
