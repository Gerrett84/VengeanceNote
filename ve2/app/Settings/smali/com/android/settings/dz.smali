.class Lcom/android/settings/dz;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# instance fields
.field final synthetic Jg:Lcom/android/settings/bQ;


# direct methods
.method constructor <init>(Lcom/android/settings/bQ;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/dz;->Jg:Lcom/android/settings/bQ;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/dz;->Jg:Lcom/android/settings/bQ;

    invoke-static {v0}, Lcom/android/settings/bQ;->a(Lcom/android/settings/bQ;)V

    .line 57
    return-void
.end method
