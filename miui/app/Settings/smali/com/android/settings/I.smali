.class Lcom/android/settings/I;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic cz:Lcom/android/settings/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/I;->cz:Lcom/android/settings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/I;->cz:Lcom/android/settings/LocationSettings;

    invoke-static {v0}, Lcom/android/settings/LocationSettings;->a(Lcom/android/settings/LocationSettings;)V

    .line 120
    return-void
.end method
