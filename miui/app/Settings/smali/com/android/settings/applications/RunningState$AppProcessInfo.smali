.class Lcom/android/settings/applications/RunningState$AppProcessInfo;
.super Ljava/lang/Object;
.source "RunningState.java"


# instance fields
.field final Cr:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field Cs:Z

.field Ct:Z


# direct methods
.method constructor <init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$AppProcessInfo;->Cr:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 110
    return-void
.end method
