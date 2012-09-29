.class Lcom/android/settings/sound/e;
.super Ljava/lang/Object;
.source "RingerVolumeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic n:Lcom/android/settings/sound/RingerVolumeActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/sound/e;->n:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/settings/sound/e;->n:Lcom/android/settings/sound/RingerVolumeActivity;

    invoke-virtual {v0}, Lcom/android/settings/sound/RingerVolumeActivity;->jm()V

    .line 185
    return-void
.end method
