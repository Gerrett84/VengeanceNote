.class public final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$ViewState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$SaveViewStateRequest;,
        Landroid/webkit/WebViewCore$FindAllRequest;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$TextFieldInitData;,
        Landroid/webkit/WebViewCore$AutoFillData;,
        Landroid/webkit/WebViewCore$WebKitHitTest;,
        Landroid/webkit/WebViewCore$TouchHighlightData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static final TOUCH_FLAG_HIT_HANDLER:I = 0x1

.field private static final TOUCH_FLAG_PREVENT_DEFAULT:I = 0x2

.field private static mRepaintScheduled:Z

.field private static sShouldMonitorWebCoreThread:Z

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mChromeCanFocusDirection:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Landroid/webkit/DeviceMotionService;

.field private mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mFirstLayoutForNonStandardLoad:Z

.field private mHighMemoryUsageThresholdMb:I

.field private mHighUsageDeltaMb:I

.field private mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

.field private mLowMemoryUsageThresholdMb:I

.field private mNativeClass:I

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Landroid/webkit/WebSettingsClassic;

.field private mTextSelectionChangeReason:I

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;

.field private m_drawWasSkipped:Z

.field private m_skipDrawFlag:Z

.field private m_skipDrawFlagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 66
    :try_start_0
    const-string/jumbo v1, "webcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    const-string v1, "chromium_net"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v1, 0x36

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "REVEAL_SELECTION"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SCROLL_TEXT_INPUT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LOAD_URL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STOP_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RELOAD"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "KEY_DOWN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "KEY_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "VIEW_SIZE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GO_BACK_FORWARD"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SET_SCROLL_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RESTORE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "PAUSE_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "RESUME_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CLEAR_CACHE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CLEAR_HISTORY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "REPLACE_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "PASS_TO_JS"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SET_GLOBAL_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "SET_NETWORK_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DOC_HAS_IMAGES"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "FAKE_CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DELETE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "LISTBOX_CHOICES"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "SINGLE_LISTBOX_CHOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MESSAGE_RELAY"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "SET_BACKGROUND_COLOR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "SET_MOVE_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "SAVE_DOCUMENT_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "129"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "WEBKIT_DRAW"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "131"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "POST_URL"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "CLEAR_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "REQUEST_CURSOR_HREF"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "ADD_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "LOAD_DATA"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "SET_ACTIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ON_PAUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ON_RESUME"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FREE_MEMORY"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "VALID_NODE_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "SAVE_WEBARCHIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "WEBKIT_DRAW_LAYERS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "REMOVE_JS_INTERFACE"

    aput-object v3, v1, v2

    sput-object v1, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 2442
    sput-boolean v4, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void

    .line 68
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 69
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "webcore"

    const-string v2, "Unable to load native support libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewClassic;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 101
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 106
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 111
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 116
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 118
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 127
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 129
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 130
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 131
    iput v7, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 132
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 133
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 135
    new-instance v5, Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-direct {v5, p0}, Landroid/webkit/DeviceMotionAndOrientationManager;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    .line 145
    iput v9, p0, Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I

    .line 2082
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2083
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2084
    const/high16 v5, 0x3f80

    iput v5, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2166
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2198
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 2200
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    .line 2201
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlag:Z

    .line 2202
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_drawWasSkipped:Z

    .line 159
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 160
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 161
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 164
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 170
    const-class v6, Landroid/webkit/WebViewCore;

    monitor-enter v6

    .line 171
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 173
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    .local v4, t:Ljava/lang/Thread;
    const-string v5, "WebViewCoreThread"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    const-class v5, Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :goto_0
    :try_start_2
    sget-boolean v5, Landroid/webkit/WebViewCore;->sShouldMonitorWebCoreThread:Z

    if-eqz v5, :cond_0

    .line 189
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-static {v5}, Landroid/webkit/WebCoreThreadWatchdog;->start(Landroid/os/Handler;)Landroid/webkit/WebCoreThreadWatchdog;

    .line 193
    .end local v4           #t:Ljava/lang/Thread;
    :cond_0
    invoke-static {p2}, Landroid/webkit/WebCoreThreadWatchdog;->registerWebView(Landroid/webkit/WebViewClassic;)V

    .line 194
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    new-instance v5, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v5, p0, v8}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 199
    new-instance v5, Landroid/webkit/WebSettingsClassic;

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-direct {v5, v6, v7}, Landroid/webkit/WebSettingsClassic;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClassic;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    .line 202
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 204
    invoke-static {}, Landroid/webkit/WebStorageClassic;->getInstance()Landroid/webkit/WebStorageClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebStorageClassic;->createUIHandler()V

    .line 206
    invoke-static {}, Landroid/webkit/GeolocationPermissionsClassic;->getInstance()Landroid/webkit/GeolocationPermissionsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/GeolocationPermissionsClassic;->createUIHandler()V

    .line 210
    iget-object v5, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 212
    .local v2, manager:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 213
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 217
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    .line 218
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighMemoryUsageThresholdMb:I

    .line 220
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighUsageDeltaMb:I

    .line 223
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 225
    .local v1, init:Landroid/os/Message;
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    return-void

    .line 178
    .end local v1           #init:Landroid/os/Message;
    .end local v2           #manager:Landroid/app/ActivityManager;
    .end local v3           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v5, "webcore"

    const-string v7, "Caught exception while waiting for thread creation."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string/jumbo v5, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeCloseIdleConnections(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewClassic;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettingsClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRevealSelection(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;IFILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(IFILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeContentInvalidateAll(I)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->keyPress(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewClassic$ViewSizeData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebViewClassic$ViewSizeData;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;IZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIIII)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativePause(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeResume(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$302(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFreeMemory(I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;IIILjava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;IILjava/lang/String;IIZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p9}, Landroid/webkit/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(IZ)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->performHitTest(IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(IIII)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeSetSelection(III)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebViewCore;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(IJ)V

    return-void
.end method

.method static synthetic access$4002(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I

    return p1
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;III)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;I[ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices(I[ZI)V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(II)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(II)V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(IZ)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(IZ)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;ILjava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;I[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(II)V

    return-void
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativePluginSurfaceReady(I)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setUseMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeAutoFillForm(II)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewCore;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeDeleteText(IIIII)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;IIIII)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewCore;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeInsertText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeClearTextSelection(I)V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeSelectText(IIIII)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeSelectWordAt(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSelectAll(I)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewCore;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeFindAll(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewCore;IZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeFindNext(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetInitialFocus(II)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewCore;Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewCore;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeMouseClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewCore;II[I[I[IIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$700()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Landroid/webkit/WebViewCore;->nativeCertTrustChanged()V

    return-void
.end method

.method static synthetic access$7002(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .locals 1
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2991
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 2992
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 2993
    return-object v0
.end method

.method private calculateWindowWidth(I)I
    .locals 3
    .parameter "viewWidth"

    .prologue
    .line 2125
    move v0, p1

    .line 2126
    .local v0, width:I
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2127
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2129
    const/16 v0, 0x3d4

    .line 2139
    :cond_0
    :goto_0
    return v0

    .line 2130
    :cond_1
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v1, :cond_2

    .line 2132
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 2135
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getDefaultZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3041
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3046
    :goto_0
    return-void

    .line 3044
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private chromeCanTakeFocus(I)Z
    .locals 2
    .parameter "webkitDirection"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->mapDirection(I)I

    move-result v0

    .line 371
    .local v0, direction:I
    iget v1, p0, Landroid/webkit/WebViewCore;->mChromeCanFocusDirection:I

    if-ne v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private chromeTakeFocus(I)V
    .locals 3
    .parameter "webkitDirection"

    .prologue
    .line 359
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 362
    .local v0, m:Landroid/os/Message;
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->mapDirection(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 363
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 2021
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 2022
    if-eqz p1, :cond_0

    .line 2023
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 2025
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    .prologue
    .line 2831
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 2834
    :goto_0
    return-void

    .line 2832
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(IIZZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "onlyIfImeIsShowing"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2402
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2408
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2409
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2423
    :cond_0
    :goto_0
    return-void

    .line 2412
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v3, :cond_0

    .line 2413
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v4, v3, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    if-eqz p3, :cond_2

    move v3, v1

    :goto_1
    if-eqz p4, :cond_3

    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2416
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_4

    .line 2417
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    move v3, v2

    .line 2413
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 2420
    .restart local v0       #msg:Landroid/os/Message;
    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;
    .locals 3
    .parameter "pluginView"

    .prologue
    const/4 v0, 0x0

    .line 2967
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 2984
    :goto_0
    return-object v0

    .line 2971
    :cond_0
    if-nez p1, :cond_1

    .line 2972
    const-string/jumbo v1, "webcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2977
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 2979
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 2980
    check-cast v1, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 2982
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 2983
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private createTextSelection(III)Landroid/webkit/WebViewCore$TextSelectionData;
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "selPtr"

    .prologue
    .line 2802
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(III)V

    .line 2803
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget v1, p0, Landroid/webkit/WebViewCore;->mTextSelectionChangeReason:I

    iput v1, v0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    .line 2804
    return-object v0
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "childView"

    .prologue
    .line 3002
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 3003
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 4
    .parameter "standardLoad"

    .prologue
    const/4 v1, 0x0

    .line 2475
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 2477
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v2, :cond_0

    .line 2496
    :goto_0
    return-void

    .line 2479
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 2480
    .local v0, updateViewState:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2484
    if-nez v0, :cond_2

    .line 2485
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 2489
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2493
    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2494
    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 2495
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    goto :goto_0

    .end local v0           #updateViewState:Z
    :cond_3
    move v0, v1

    .line 2479
    goto :goto_1
.end method

.method private focusNodeChanged(ILandroid/webkit/WebViewCore$WebKitHitTest;)V
    .locals 3
    .parameter "nodePointer"
    .parameter "hitTest"

    .prologue
    .line 350
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x93

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2918
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v4, :cond_0

    .line 2939
    :goto_0
    return-object v3

    .line 2922
    :cond_0
    invoke-static {v3}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 2924
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2925
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2926
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a plugin APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2931
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 2932
    :catch_0
    move-exception v0

    .line 2933
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2934
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 2935
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedQuota()J
    .locals 8

    .prologue
    .line 2145
    invoke-static {}, Landroid/webkit/WebStorageClassic;->getInstance()Landroid/webkit/WebStorageClassic;

    move-result-object v4

    .line 2146
    .local v4, webStorage:Landroid/webkit/WebStorageClassic;
    invoke-virtual {v4}, Landroid/webkit/WebStorageClassic;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 2148
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_1

    .line 2149
    const-wide/16 v2, 0x0

    .line 2155
    :cond_0
    return-wide v2

    .line 2151
    :cond_1
    const-wide/16 v2, 0x0

    .line 2152
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 2153
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2459
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    .prologue
    .line 2959
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 2964
    :goto_0
    return-void

    .line 2962
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initEditField(IIILandroid/webkit/WebViewCore$TextFieldInitData;)V
    .locals 5
    .parameter "start"
    .parameter "end"
    .parameter "selectionPtr"
    .parameter "initData"

    .prologue
    .line 2839
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 2849
    :goto_0
    return-void

    .line 2842
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8e

    invoke-static {v0, v1, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2844
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    iget v2, p4, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->createTextSelection(III)Landroid/webkit/WebViewCore$TextSelectionData;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 235
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettingsClassic;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 239
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettingsClassic;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 241
    invoke-static {}, Landroid/webkit/WebIconDatabaseClassic;->getInstance()Landroid/webkit/WebIconDatabaseClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabaseClassic;->createHandler()V

    .line 243
    invoke-static {}, Landroid/webkit/WebStorageClassic;->getInstance()Landroid/webkit/WebStorageClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorageClassic;->createHandler()V

    .line 245
    invoke-static {}, Landroid/webkit/GeolocationPermissionsClassic;->getInstance()Landroid/webkit/GeolocationPermissionsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissionsClassic;->createHandler()V

    .line 248
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 252
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    :cond_0
    return-void
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 317
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 318
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "video/m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "core"

    .prologue
    .line 2360
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    .line 2907
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v1, :cond_0

    .line 2908
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x88

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2910
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2911
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2913
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void

    .line 2910
    .restart local v0       #message:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private key(Landroid/view/KeyEvent;IZ)V
    .locals 12
    .parameter "evt"
    .parameter "canTakeFocusDirection"
    .parameter "isDown"

    .prologue
    const/4 v11, 0x0

    .line 2044
    iput p2, p0, Landroid/webkit/WebViewCore;->mChromeCanFocusDirection:I

    .line 2045
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2046
    .local v2, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 2048
    .local v3, unicodeChar:I
    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2051
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 2054
    :cond_0
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v7

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/webkit/WebViewCore;->nativeKey(IIIIZZZZ)Z

    move-result v9

    .line 2057
    .local v9, handled:Z
    iput v11, p0, Landroid/webkit/WebViewCore;->mChromeCanFocusDirection:I

    .line 2058
    if-nez v9, :cond_1

    const/16 v0, 0x42

    if-eq v2, v0, :cond_1

    .line 2059
    const/16 v0, 0x13

    if-lt v2, v0, :cond_2

    const/16 v0, 0x16

    if-gt v2, v0, :cond_2

    .line 2061
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2062
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 2064
    .local v10, m:Landroid/os/Message;
    iput p2, v10, Landroid/os/Message;->arg1:I

    .line 2065
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2074
    .end local v10           #m:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 2072
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private keyPress(I)V
    .locals 9
    .parameter "unicodeChar"

    .prologue
    const/4 v2, 0x0

    .line 2077
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v8, 0x1

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/webkit/WebViewCore;->nativeKey(IIIIZZZZ)Z

    .line 2078
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/webkit/WebViewCore;->nativeKey(IIIIZZZZ)Z

    .line 2079
    return-void
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2029
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2030
    return-void
.end method

.method private mapDirection(I)I
    .locals 1
    .parameter "webkitDirection"

    .prologue
    .line 390
    packed-switch p1, :pswitch_data_0

    .line 404
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 392
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 394
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    :pswitch_2
    const/16 v0, 0x21

    goto :goto_0

    .line 398
    :pswitch_3
    const/16 v0, 0x82

    goto :goto_0

    .line 400
    :pswitch_4
    const/16 v0, 0x11

    goto :goto_0

    .line 402
    :pswitch_5
    const/16 v0, 0x42

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private native nativeAutoFillForm(II)V
.end method

.method private static native nativeCertTrustChanged()V
.end method

.method private native nativeClearContent(I)V
.end method

.method private native nativeClearTextSelection(I)V
.end method

.method private native nativeCloseIdleConnections(I)V
.end method

.method private native nativeContentInvalidateAll(I)V
.end method

.method private native nativeDeleteSelection(IIII)V
.end method

.method private native nativeDeleteText(IIIII)V
.end method

.method private native nativeDumpDomTree(IZ)V
.end method

.method private native nativeDumpRenderTree(IZ)V
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFindAll(ILjava/lang/String;)I
.end method

.method private native nativeFindNext(IZ)I
.end method

.method private native nativeFocusBoundsChanged(I)Z
.end method

.method private native nativeFreeMemory(I)V
.end method

.method private native nativeFullScreenPluginHidden(II)V
.end method

.method private native nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
.end method

.method private native nativeGetContentMinPrefWidth(I)I
.end method

.method private native nativeGetText(IIIII)Ljava/lang/String;
.end method

.method private native nativeHandleTouchEvent(II[I[I[IIII)I
.end method

.method private native nativeHitTest(IIIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;
.end method

.method private native nativeInsertText(ILjava/lang/String;)V
.end method

.method private native nativeKey(IIIIZZZZ)Z
.end method

.method private native nativeModifySelection(III)Ljava/lang/String;
.end method

.method private native nativeMouseClick(I)Z
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause(I)V
.end method

.method private native nativePluginSurfaceReady(I)V
.end method

.method private native nativeProvideVisitedHistory(I[Ljava/lang/String;)V
.end method

.method private native nativeRecordContent(ILandroid/graphics/Point;)I
.end method

.method private native nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IIILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(III)Ljava/lang/String;
.end method

.method private native nativeResume(I)V
.end method

.method private native nativeRetrieveAnchorText(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(III)Ljava/lang/String;
.end method

.method private native nativeRevealSelection(I)V
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeScrollFocusedTextInput(IFILandroid/graphics/Rect;)V
.end method

.method private native nativeScrollLayer(IILandroid/graphics/Rect;)V
.end method

.method private native nativeSelectAll(I)V
.end method

.method private native nativeSelectText(IIIII)V
.end method

.method private native nativeSelectWordAt(III)Z
.end method

.method private native nativeSendListBoxChoice(II)V
.end method

.method private native nativeSendListBoxChoices(I[ZI)V
.end method

.method private native nativeSetBackgroundColor(II)V
.end method

.method private native nativeSetFocusControllerActive(IZ)V
.end method

.method private native nativeSetGlobalBounds(IIIII)V
.end method

.method private native nativeSetInitialFocus(II)V
.end method

.method private native nativeSetIsPaused(IZ)V
.end method

.method private native nativeSetJsFlags(ILjava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(IJ)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(III)V
.end method

.method private native nativeSetSize(IIIIFIIIIZ)V
.end method

.method private needTouchEvents(Z)V
    .locals 4
    .parameter "need"

    .prologue
    const/4 v1, 0x0

    .line 2782
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2783
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2787
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2783
    goto :goto_0
.end method

.method private openFileChooser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "acceptType"
    .parameter "capture"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 416
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->openFileChooser(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 417
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 418
    const-string v7, ""

    .line 421
    .local v7, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 425
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 427
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 431
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 436
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 437
    .local v8, uriString:Ljava/lang/String;
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, v7, v8}, Landroid/webkit/JWebCoreJavaBridge;->storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #uriString:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 431
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 434
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 440
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_1
.end method

.method private native passToJs(IILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 290
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 295
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 2325
    if-eqz p0, :cond_0

    .line 2326
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2338
    :cond_0
    :goto_0
    return-void

    .line 2328
    :cond_1
    monitor-enter p0

    .line 2329
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2330
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    monitor-exit p0

    goto :goto_0

    .line 2335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2333
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(IZ)V

    .line 2334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2335
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private performHitTest(IIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "slop"
    .parameter "moveMouse"

    .prologue
    .line 2012
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebViewCore;->nativeHitTest(IIIIZ)Landroid/webkit/WebViewCore$WebKitHitTest;

    move-result-object v6

    .line 2013
    .local v6, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    iput p1, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestX:I

    .line 2014
    iput p2, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestY:I

    .line 2015
    iput p3, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    .line 2016
    iput-boolean p4, v6, Landroid/webkit/WebViewCore$WebKitHitTest;->mHitTestMovedMouse:Z

    .line 2017
    return-object v6
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2300
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2301
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2302
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2304
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 4
    .parameter "showKeyboard"

    .prologue
    const/4 v1, 0x0

    .line 2886
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2887
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v2, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2891
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2887
    goto :goto_0
.end method

.method private requestListBox([Ljava/lang/String;[II)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 2878
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2879
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->requestListBox([Ljava/lang/String;[II)V

    .line 2882
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[I[I)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 2870
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2871
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->requestListBox([Ljava/lang/String;[I[I)V

    .line 2873
    :cond_0
    return-void
.end method

.method private restoreScale(FF)V
    .locals 1
    .parameter "scale"
    .parameter "textWrapScale"

    .prologue
    .line 2771
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2772
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 2773
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 2774
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2775
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 2778
    :cond_0
    return-void
.end method

.method private restoreState(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 2366
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 2367
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 2368
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2369
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 2368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2371
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2372
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 2373
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2374
    return-void
.end method

.method static resumePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2308
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2309
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2310
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2312
    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 301
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 306
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 2341
    if-eqz p0, :cond_0

    .line 2343
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_1

    .line 2357
    :cond_0
    :goto_0
    return-void

    .line 2346
    :cond_1
    monitor-enter p0

    .line 2347
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2348
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    monitor-exit p0

    goto :goto_0

    .line 2355
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2351
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(IZ)V

    .line 2352
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2354
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2355
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveViewState(Ljava/io/OutputStream;Landroid/webkit/ValueCallback;)V
    .locals 5
    .parameter "stream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2278
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 2280
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    iget v3, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    iget-object v4, v0, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Landroid/webkit/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v3

    iput v3, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 2281
    const/4 v1, 0x0

    .line 2283
    .local v1, result:Z
    :try_start_0
    invoke-static {p1, v0}, Landroid/webkit/ViewStateSerializer;->serializeViewState(Ljava/io/OutputStream;Landroid/webkit/WebViewCore$DrawData;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2287
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2288
    iget v3, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    if-eqz v3, :cond_1

    .line 2289
    iget-boolean v3, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v3, :cond_0

    .line 2290
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2291
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v4, 0x82

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$7400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2293
    :cond_0
    iput-object v0, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 2294
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V

    .line 2296
    :cond_1
    return-void

    .line 2284
    :catch_0
    move-exception v2

    .line 2285
    .local v2, t:Ljava/lang/Throwable;
    const-string/jumbo v3, "webcore"

    const-string v4, "Failed to save view state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "autoname"

    .prologue
    .line 2036
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3060
    return-void
.end method

.method private sendNotifyProgressFinished()V
    .locals 0

    .prologue
    .line 2427
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2428
    return-void
.end method

.method private sendPluginDrawMsg()V
    .locals 1

    .prologue
    .line 2464
    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2465
    return-void
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "messageType"
    .parameter "argument"

    .prologue
    .line 2315
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2318
    :cond_0
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2435
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2436
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2440
    :cond_0
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 3050
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 3055
    :goto_0
    return-void

    .line 3053
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static setShouldMonitorWebCoreThread()V
    .locals 1

    .prologue
    .line 3089
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewCore;->sShouldMonitorWebCoreThread:Z

    .line 3090
    return-void
.end method

.method private setUseMockDeviceOrientation()V
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Landroid/webkit/DeviceMotionAndOrientationManager;->setUseMock()V

    .line 3064
    return-void
.end method

.method private native setViewportSettingsFromNative(I)V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .locals 3
    .parameter "queryId"
    .parameter "preview"

    .prologue
    .line 2894
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x85

    new-instance v2, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$AutoFillData;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2899
    :cond_0
    return-void
.end method

.method private setupViewport(Z)V
    .locals 13
    .parameter "updateViewState"

    .prologue
    .line 2505
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    if-nez v9, :cond_1

    .line 2767
    :cond_0
    :goto_0
    return-void

    .line 2510
    :cond_1
    iget v9, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v9}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative(I)V

    .line 2513
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_3

    .line 2514
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_2

    .line 2515
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2518
    :cond_2
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_3

    .line 2519
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2524
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->forceUserScalable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2525
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 2526
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_10

    .line 2527
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_4

    .line 2528
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2531
    :cond_4
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_5

    .line 2532
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2546
    :cond_5
    :goto_1
    const/high16 v0, 0x3f80

    .line 2547
    .local v0, adjust:F
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_12

    .line 2548
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v0, v9, Landroid/util/DisplayMetrics;->density:F

    .line 2556
    :cond_6
    :goto_2
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x8b

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2558
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getDefaultZoomScale()F

    move-result v9

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_7

    .line 2559
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x8b

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 2562
    :cond_7
    const/high16 v9, 0x42c8

    mul-float/2addr v9, v0

    float-to-int v2, v9

    .line 2564
    .local v2, defaultScale:I
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_8

    .line 2565
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2567
    :cond_8
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_9

    .line 2568
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2570
    :cond_9
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_a

    .line 2571
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2575
    :cond_a
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v9, :cond_b

    .line 2576
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v9, :cond_b

    .line 2577
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2580
    :cond_b
    iget-boolean v9, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v9, :cond_c

    .line 2581
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2582
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2583
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2585
    :cond_c
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v9, v10, :cond_d

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v9, :cond_d

    .line 2587
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2589
    :cond_d
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_e

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v9, v10, :cond_e

    .line 2591
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2593
    :cond_e
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v9, :cond_f

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v9, v2, :cond_f

    .line 2594
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 2598
    :cond_f
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v9, :cond_13

    if-nez p1, :cond_13

    .line 2600
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 2601
    new-instance v5, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v5}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    .line 2602
    .local v5, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v9, v9

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 2603
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v9, v9

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 2604
    iput v0, v5, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 2606
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 2608
    const/4 v9, 0x0

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 2609
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 2610
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v9, v9, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x6d

    invoke-static {v9, v10, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2536
    .end local v0           #adjust:F
    .end local v2           #defaultScale:I
    .end local v5           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :cond_10
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_11

    .line 2537
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    const/16 v10, 0x32

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2539
    :cond_11
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_5

    .line 2540
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    const/16 v10, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_1

    .line 2549
    .restart local v0       #adjust:F
    :cond_12
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v9, :cond_6

    .line 2550
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v10, v10

    div-float v0, v9, v10

    goto/16 :goto_2

    .line 2619
    .restart local v2       #defaultScale:I
    :cond_13
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2620
    .local v6, viewportWidth:I
    if-nez v6, :cond_15

    .line 2624
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v7

    .line 2625
    .local v7, webViewWidth:I
    int-to-float v9, v7

    div-float/2addr v9, v0

    float-to-int v6, v9

    .line 2626
    if-nez v6, :cond_14

    .line 2634
    :cond_14
    :goto_3
    new-instance v9, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v9}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    iput-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2635
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 2636
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 2637
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 2638
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 2639
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 2640
    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    if-nez v9, :cond_16

    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    if-nez v9, :cond_16

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v9, :cond_16

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v9}, Landroid/webkit/BrowserFrame;->getShouldStartScrolledRight()Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v10, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 2645
    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v9, :cond_17

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v10, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 2646
    iget-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v9, :cond_19

    .line 2647
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    .line 2648
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 2649
    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_18

    .line 2650
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2673
    :goto_6
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-boolean v9, v9, Landroid/webkit/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v9, :cond_1d

    .line 2679
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebViewClassic;->mLastHeightSent:I

    .line 2682
    new-instance v1, Landroid/webkit/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebViewClassic$ViewSizeData;-><init>()V

    .line 2683
    .local v1, data:Landroid/webkit/WebViewClassic$ViewSizeData;
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v9, v9, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    .line 2684
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeight:I

    .line 2687
    iget v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 2688
    const/high16 v9, -0x4080

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    .line 2689
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    .line 2690
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorY:I

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorX:I

    .line 2697
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v10, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$7400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2698
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v10, 0x0

    const/16 v11, 0x69

    invoke-static {v10, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$7200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2632
    .end local v1           #data:Landroid/webkit/WebViewClassic$ViewSizeData;
    .end local v7           #webViewWidth:I
    :cond_15
    int-to-float v9, v6

    iget v10, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .restart local v7       #webViewWidth:I
    goto/16 :goto_3

    .line 2640
    :cond_16
    const/4 v9, 0x0

    goto :goto_4

    .line 2645
    :cond_17
    const/4 v9, 0x0

    goto :goto_5

    .line 2652
    :cond_18
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, v10, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    goto :goto_6

    .line 2655
    :cond_19
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_1a

    .line 2656
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    iput v11, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v11, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto :goto_6

    .line 2658
    :cond_1a
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v9, :cond_1b

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v9, v7, :cond_1b

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 2660
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    int-to-float v11, v7

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v11, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 2663
    :cond_1b
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2664
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 2666
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 2668
    :cond_1c
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 2701
    :cond_1d
    if-nez v6, :cond_1e

    .line 2704
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebViewClassic;->mLastWidthSent:I

    goto/16 :goto_0

    .line 2706
    :cond_1e
    new-instance v1, Landroid/webkit/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebViewClassic$ViewSizeData;-><init>()V

    .line 2710
    .restart local v1       #data:Landroid/webkit/WebViewClassic$ViewSizeData;
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v3, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 2711
    .local v3, tentativeScale:F
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-nez v9, :cond_21

    .line 2718
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v3, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2719
    int-to-float v9, v7

    div-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2720
    .local v4, tentativeViewWidth:I
    invoke-direct {p0, v4}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v8

    .line 2724
    .local v8, windowWidth:I
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    .line 2725
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 2727
    iget v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    .line 2729
    :cond_1f
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 2731
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget v11, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    invoke-virtual {v10, v11}, Landroid/webkit/WebViewClassic;->computeReadingLevelScale(F)F

    move-result v10

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 2746
    .end local v4           #tentativeViewWidth:I
    .end local v8           #windowWidth:I
    :cond_20
    :goto_7
    int-to-float v9, v7

    iget v10, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    .line 2752
    iget v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v9, :cond_22

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    :goto_8
    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeight:I

    .line 2755
    int-to-float v9, v7

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 2757
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    .line 2758
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorY:I

    iput v9, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorX:I

    .line 2761
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v10, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$7400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2764
    invoke-direct {p0, v1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebViewClassic$ViewSizeData;)V

    goto/16 :goto_0

    .line 2736
    :cond_21
    iput v3, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    goto :goto_7

    .line 2752
    :cond_22
    iget v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    int-to-float v9, v9

    iget v10, v1, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_8
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;II)V
    .locals 3
    .parameter "childView"
    .parameter "orientation"
    .parameter "npp"

    .prologue
    .line 2945
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 2955
    :goto_0
    return-void

    .line 2949
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2951
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2952
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2953
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2954
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"

    .prologue
    .line 3022
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v1, :cond_0

    .line 3023
    new-instance v0, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 3024
    .local v0, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 3025
    iput p2, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 3026
    iput p3, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 3027
    iput p4, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 3028
    iput p5, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 3029
    iput p6, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 3030
    iput p7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 3031
    iput p8, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 3032
    iput p9, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 3033
    iput p10, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 3034
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3037
    .end local v0           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_0
    return-void
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2998
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 2999
    return-void
.end method

.method private updateTextSelection(IIIII)V
    .locals 3
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"
    .parameter "selectionPtr"

    .prologue
    .line 2810
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    .line 2811
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-direct {p0, p2, p3, p5}, Landroid/webkit/WebViewCore;->createTextSelection(III)Landroid/webkit/WebViewCore$TextSelectionData;

    move-result-object v2

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2815
    :cond_0
    return-void
.end method

.method private updateTextSizeAndScroll(IIIII)V
    .locals 5
    .parameter "pointer"
    .parameter "width"
    .parameter "height"
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 2820
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v1, :cond_0

    .line 2821
    new-instance v0, Landroid/graphics/Rect;

    neg-int v1, p4

    neg-int v2, p5

    sub-int v3, p2, p4

    sub-int v4, p3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2823
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2827
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .locals 3
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 2792
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v1, :cond_0

    .line 2793
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2796
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2797
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2799
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1

    .prologue
    .line 2501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2502
    return-void
.end method

.method private viewSizeChanged(Landroid/webkit/WebViewClassic$ViewSizeData;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 2088
    move-object/from16 v0, p1

    iget v7, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mWidth:I

    .line 2089
    .local v7, w:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeight:I

    .line 2090
    .local v12, h:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 2091
    .local v5, textwrapWidth:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mScale:F

    .line 2096
    .local v6, scale:F
    if-nez v7, :cond_1

    .line 2097
    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "skip viewSizeChanged as w is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2100
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v3

    .line 2101
    .local v3, width:I
    move v4, v12

    .line 2102
    .local v4, height:I
    if-eq v3, v7, :cond_2

    .line 2103
    move-object/from16 v0, p1

    iget v13, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mHeightWidthRatio:F

    .line 2104
    .local v13, heightWidthRatio:F
    const/4 v1, 0x0

    cmpl-float v1, v13, v1

    if-lez v1, :cond_3

    move v15, v13

    .line 2105
    .local v15, ratio:F
    :goto_1
    int-to-float v1, v3

    mul-float/2addr v1, v15

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2107
    .end local v13           #heightWidthRatio:F
    .end local v15           #ratio:F
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    if-lez v1, :cond_4

    move-object/from16 v0, p1

    iget v8, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    .line 2108
    .local v8, screenHeight:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebViewCore;->mNativeClass:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorX:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mAnchorY:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/webkit/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIIFIIIIZ)V

    .line 2111
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v1, :cond_5

    const/4 v14, 0x1

    .line 2112
    .local v14, needInvalidate:Z
    :goto_3
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2113
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2114
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2115
    if-eqz v14, :cond_0

    .line 2119
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    goto :goto_0

    .line 2104
    .end local v8           #screenHeight:I
    .end local v14           #needInvalidate:Z
    .restart local v13       #heightWidthRatio:F
    :cond_3
    int-to-float v1, v12

    int-to-float v2, v7

    div-float v15, v1, v2

    goto :goto_1

    .end local v13           #heightWidthRatio:F
    :cond_4
    move v8, v12

    .line 2107
    goto :goto_2

    .line 2111
    .restart local v8       #screenHeight:I
    :cond_5
    const/4 v14, 0x0

    goto :goto_3
.end method

.method private webkitDraw()V
    .locals 5

    .prologue
    .line 2224
    iget-object v2, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2225
    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v1, :cond_1

    .line 2226
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->m_drawWasSkipped:Z

    .line 2227
    monitor-exit v2

    .line 2246
    :cond_0
    :goto_0
    return-void

    .line 2229
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2232
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 2234
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    iget-object v2, v0, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 2235
    iget v1, v0, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    if-nez v1, :cond_2

    .line 2236
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2238
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xa

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v1, v2, v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$7300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    goto :goto_0

    .line 2229
    .end local v0           #draw:Landroid/webkit/WebViewCore$DrawData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2244
    .restart local v0       #draw:Landroid/webkit/WebViewCore$DrawData;
    :cond_2
    iput-object v0, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 2245
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V

    goto :goto_0
.end method

.method private webkitDraw(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 3
    .parameter "draw"

    .prologue
    .line 2249
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_3

    .line 2250
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged(I)Z

    move-result v0

    iput-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 2251
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 2252
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x3d4

    :goto_0
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v1}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 2259
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    if-eqz v0, :cond_1

    .line 2260
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2263
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v0, :cond_2

    .line 2264
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    .line 2265
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 2268
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->pauseWebKitDraw()V

    .line 2269
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2272
    :cond_3
    return-void

    .line 2253
    :cond_4
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_5

    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 335
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 336
    return-void
.end method

.method clearContent()V
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeClearContent(I)V

    .line 596
    return-void
.end method

.method contentDraw()V
    .locals 3

    .prologue
    .line 2382
    monitor-enter p0

    .line 2383
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 2385
    :cond_0
    monitor-exit p0

    .line 2397
    :goto_0
    return-void

    .line 2389
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2390
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 2396
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2393
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_4

    monitor-exit p0

    goto :goto_0

    .line 2394
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2395
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2396
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 1996
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v1

    .line 1999
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x1

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$1202(Landroid/webkit/WebViewCore$EventHub;Z)Z

    .line 2000
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$7200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2002
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$7600(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2003
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-static {v0}, Landroid/webkit/WebCoreThreadWatchdog;->unregisterWebView(Landroid/webkit/WebViewClassic;)V

    .line 2004
    monitor-exit v1

    .line 2005
    return-void

    .line 2004
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 573
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 576
    .local v0, message:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 577
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "quota"
    .parameter "estimatedDatabaseSize"

    .prologue
    .line 458
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 466
    return-void
.end method

.method protected exitFullscreenVideo()V
    .locals 3

    .prologue
    .line 585
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 588
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 519
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 500
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 512
    return-void
.end method

.method declared-synchronized getBrowserFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2902
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Landroid/webkit/DeviceMotionService;
    .locals 3

    .prologue
    .line 3073
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    if-nez v0, :cond_0

    .line 3074
    new-instance v0, Landroid/webkit/DeviceMotionService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceMotionService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    .line 3077
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Landroid/webkit/DeviceOrientationService;
    .locals 3

    .prologue
    .line 3081
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    if-nez v0, :cond_0

    .line 3082
    new-instance v0, Landroid/webkit/DeviceOrientationService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceOrientationService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    .line 3085
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    return-object v0
.end method

.method public getInputDispatcherCallbacks()Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettingsClassic;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettingsClassic;

    return-object v0
.end method

.method getWebViewClassic()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 2454
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 268
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 269
    return-void
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 343
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 538
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 549
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method pauseWebKitDraw()V
    .locals 2

    .prologue
    .line 2205
    iget-object v1, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2206
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlag:Z

    if-nez v0, :cond_0

    .line 2207
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlag:Z

    .line 2209
    :cond_0
    monitor-exit v1

    .line 2210
    return-void

    .line 2209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected populateVisitedLinks()V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Landroid/webkit/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    .line 490
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 491
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .parameter "requiredStorage"

    .prologue
    .line 474
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 481
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$7500(Landroid/webkit/WebViewCore$EventHub;)V

    .line 1989
    return-void
.end method

.method removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 1984
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$7400(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 1985
    return-void
.end method

.method resumeWebKitDraw()V
    .locals 4

    .prologue
    .line 2213
    iget-object v1, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2214
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->m_drawWasSkipped:Z

    if-eqz v0, :cond_0

    .line 2216
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->m_drawWasSkipped:Z

    .line 2217
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2219
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->m_skipDrawFlag:Z

    .line 2220
    monitor-exit v1

    .line 2221
    return-void

    .line 2220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1944
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1945
    return-void
.end method

.method sendMessage(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1958
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1959
    return-void
.end method

.method sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1963
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1971
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1972
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 1967
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1968
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1954
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1933
    return-void
.end method

.method sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1948
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1950
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1975
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1977
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 1980
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$7300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 1981
    return-void
.end method

.method sendMessages(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1936
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v2

    .line 1937
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1938
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/webkit/WebViewCore$EventHub;->access$7100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 1937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1940
    :cond_0
    monitor-exit v2

    .line 1941
    return-void

    .line 1940
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setInstallableWebApp()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->setInstallableWebApp()V

    .line 567
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 3068
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->setMockOrientation(ZDZDZD)V

    .line 3070
    return-void
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 2448
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2449
    return-void
.end method

.method stopLoading()V
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1920
    :cond_0
    return-void
.end method
