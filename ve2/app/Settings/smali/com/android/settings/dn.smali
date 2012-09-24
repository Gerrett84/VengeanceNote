.class Lcom/android/settings/dn;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# instance fields
.field final synthetic GB:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/dn;->GB:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/dn;->GB:Lcom/android/settings/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->a(Lcom/android/settings/DisplaySettings;)V

    .line 70
    return-void
.end method
