.class Lcom/android/settings/applications/RunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final Cn:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field Co:Z

.field Cp:Z


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cn:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 110
    return-void
.end method
