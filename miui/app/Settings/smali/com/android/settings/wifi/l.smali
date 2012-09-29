.class public Lcom/android/settings/wifi/l;
.super Ljava/lang/Object;
.source "WifiSettings.java"


# instance fields
.field final synthetic cA:Lcom/android/settings/wifi/WifiSettings;

.field private store:Ljava/util/HashMap;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/android/settings/wifi/l;->cA:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 722
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/l;->store:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/settings/wifi/l;->store:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 726
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/settings/wifi/l;->store:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 731
    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    iget-object v1, p0, Lcom/android/settings/wifi/l;->store:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    return-void
.end method
