.class public Lorg/telegram/util/PermissionsUtil;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"


# static fields
.field public static final INITIAL_AUDIO_PERMS:[Ljava/lang/String;

.field public static final INITIAL_AUDIO_REQUEST:I = 0xa6

.field public static final INITIAL_CAMERA_PERMS:[Ljava/lang/String;

.field public static final INITIAL_CAMERA_REQUEST:I = 0x90

.field public static final INITIAL_DEVICE_PERMS:[Ljava/lang/String;

.field public static final INITIAL_DEVICE_REQUEST:I = 0x9b

.field public static final INITIAL_EXPORT_SETTINGS_REQUEST:I = 0x85

.field public static final INITIAL_IMPORT_SETTINGS_REQUEST:I = 0x7a

.field public static final INITIAL_LOCATION_PERMS:[Ljava/lang/String;

.field public static final INITIAL_LOCATION_REQUEST:I = 0x6f

.field public static final INITIAL_STORAGE_PERMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    sput-object v0, Lorg/telegram/util/PermissionsUtil;->INITIAL_LOCATION_PERMS:[Ljava/lang/String;

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    sput-object v0, Lorg/telegram/util/PermissionsUtil;->INITIAL_STORAGE_PERMS:[Ljava/lang/String;

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    sput-object v0, Lorg/telegram/util/PermissionsUtil;->INITIAL_DEVICE_PERMS:[Ljava/lang/String;

    .line 28
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    sput-object v0, Lorg/telegram/util/PermissionsUtil;->INITIAL_CAMERA_PERMS:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v2

    sput-object v0, Lorg/telegram/util/PermissionsUtil;->INITIAL_AUDIO_PERMS:[Ljava/lang/String;

    .line 45
    const-class v0, Lorg/telegram/util/PermissionsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/telegram/util/PermissionsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAccessAudioState(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0, p0}, Lorg/telegram/util/PermissionsUtil;->hasPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static canAccessCamera(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v0, "android.permission.CAMERA"

    invoke-static {v0, p0}, Lorg/telegram/util/PermissionsUtil;->hasPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static canAccessDeviceState(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, p0}, Lorg/telegram/util/PermissionsUtil;->hasPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static canAccessLocation(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, p0}, Lorg/telegram/util/PermissionsUtil;->hasPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static canAccessStorage(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, p0}, Lorg/telegram/util/PermissionsUtil;->hasPermission(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static hasPermission(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    .line 70
    invoke-static {p1, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 69
    :goto_7
    return v0

    .line 70
    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
