.class public final Lmiui/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ACTIVATE_MIMSG:Ljava/lang/String; = "com.xiaomi.permission.ACTIVATE_MIMSG"

.field public static final AUTO_BACKUP:Ljava/lang/String; = "com.miui.backup.permission.AUTO_BACKUP"

.field public static final CLOUD_MANAGER:Ljava/lang/String; = "com.xiaomi.permission.CLOUD_MANAGER"

.field public static final FIND_DEVICE:Ljava/lang/String; = "com.miui.cloudservice.permission.FIND_DEVICE"

.field public static final TIGGER_TOGGLE:Ljava/lang/String; = "com.android.SystemUI.permission.TIGGER_TOGGLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
