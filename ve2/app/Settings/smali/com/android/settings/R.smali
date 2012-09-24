.class public Lcom/android/settings/R;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field eS:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/settings/R;->eS:Ljava/util/Map;

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/R;->eS:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-object v0, p0, Lcom/android/settings/R;->eS:Ljava/util/Map;

    iget-object v2, p2, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/android/internal/os/PkgUsageStats;

    check-cast p2, Lcom/android/internal/os/PkgUsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/R;->a(Lcom/android/internal/os/PkgUsageStats;Lcom/android/internal/os/PkgUsageStats;)I

    move-result v0

    return v0
.end method
