.class public Lcom/google/firebase/iid/zzf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/zzf$zza;,
        Lcom/google/firebase/iid/zzf$zzb;
    }
.end annotation


# static fields
.field static zzbhQ:Ljava/lang/String;

.field static zzbhR:Z

.field static zzbhS:I

.field static zzbhT:I

.field static zzbhU:I

.field static zzbhV:Landroid/content/BroadcastReceiver;


# instance fields
.field zzbgG:Landroid/app/PendingIntent;

.field zzbgK:Landroid/os/Messenger;

.field zzbhX:Landroid/os/Messenger;

.field zzbhY:Lcom/google/android/gms/iid/MessengerCompat;

.field zzbhZ:J

.field zzbia:J

.field zzbib:I

.field zzbic:I

.field zzbid:J

.field private final zzclw:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/iid/zzf$zzb;",
            ">;"
        }
    .end annotation
.end field

.field zzqn:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    sput-boolean v0, Lcom/google/firebase/iid/zzf;->zzbhR:Z

    sput v0, Lcom/google/firebase/iid/zzf;->zzbhS:I

    sput v0, Lcom/google/firebase/iid/zzf;->zzbhT:I

    sput v0, Lcom/google/firebase/iid/zzf;->zzbhU:I

    sput-object v1, Lcom/google/firebase/iid/zzf;->zzbhV:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p1, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized zzHn()Ljava/lang/String;
    .registers 3

    const-class v1, Lcom/google/firebase/iid/zzf;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/google/firebase/iid/zzf;->zzbhU:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/google/firebase/iid/zzf;->zzbhU:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static varargs zza(Ljava/security/KeyPair;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "\n"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_c} :catch_2a

    move-result-object v2

    :try_start_d
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    instance-of v1, v3, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_33

    const-string v1, "SHA256withRSA"

    :goto_17
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzv([B)Ljava/lang/String;
    :try_end_28
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_28} :catch_36

    move-result-object v0

    :goto_29
    return-object v0

    :catch_2a
    move-exception v1

    const-string v2, "InstanceID/Rpc"

    const-string v3, "Unable to encode string"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :cond_33
    :try_start_33
    const-string v1, "SHA256withECDSA"
    :try_end_35
    .catch Ljava/security/GeneralSecurityException; {:try_start_33 .. :try_end_35} :catch_36

    goto :goto_17

    :catch_36
    move-exception v1

    const-string v2, "InstanceID/Rpc"

    const-string v3, "Unable to sign registration request"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method private static zza(Landroid/content/pm/PackageManager;)Z
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-static {p0, v0, v3}, Lcom/google/firebase/iid/zzf;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sput-boolean v1, Lcom/google/firebase/iid/zzf;->zzbhR:Z

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_2b
.end method

.method private static zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "com.google.android.c2dm.permission.SEND"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const-string v0, "InstanceID/Rpc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x38

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Possible malicious package "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " declares "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " without permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private zzay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v2, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    if-nez p1, :cond_25

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzf$zzb;

    invoke-interface {v0, p2}, Lcom/google/firebase/iid/zzf$zzb;->onError(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1e
    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    :goto_23
    monitor-exit v2

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzf$zzb;

    if-nez v0, :cond_4f

    const-string v1, "InstanceID/Rpc"

    const-string v3, "Missing callback for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_41
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_24

    :catchall_46
    move-exception v0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    :try_start_49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_41

    :cond_4f
    invoke-interface {v0, p2}, Lcom/google/firebase/iid/zzf$zzb;->onError(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_46

    goto :goto_23
.end method

.method private zzb(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/iid/zzf;->zzHn()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/iid/zzf$zza;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/iid/zzf$zza;-><init>(Lcom/google/firebase/iid/zzf$1;)V

    iget-object v2, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_d
    iget-object v3, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_24

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/iid/zzf;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;Ljava/lang/String;)V

    :try_start_16
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzf$zza;->zzabT()Landroid/content/Intent;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2a

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_1d
    iget-object v3, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    return-object v1

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    :catchall_2a
    move-exception v1

    iget-object v2, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v2

    :try_start_2e
    iget-object v3, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_35

    throw v1

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private zzb(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8

    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzclw:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/zzf$zzb;

    if-nez v0, :cond_2d

    const-string v2, "InstanceID/Rpc"

    const-string v3, "Missing callback for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    invoke-interface {v0, p2}, Lcom/google/firebase/iid/zzf$zzb;->zzH(Landroid/content/Intent;)V

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2a

    goto :goto_23
.end method

.method private static zzb(Landroid/content/pm/PackageManager;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.iid.TOKEN_REQUEST"

    invoke-static {p0, v0, v4}, Lcom/google/firebase/iid/zzf;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sput-boolean v1, Lcom/google/firebase/iid/zzf;->zzbhR:Z

    move v0, v1

    :goto_2c
    return v0

    :cond_2d
    move v0, v2

    goto :goto_2c
.end method

.method private static zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v1, Lcom/google/firebase/iid/zzf;->zzbhT:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_e} :catch_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public static zzbA(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/google/firebase/iid/zzf;->zzbhS:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzq()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {v0}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {v0}, Lcom/google/firebase/iid/zzf;->zza(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_23
    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    goto :goto_6

    :cond_26
    invoke-static {v0}, Lcom/google/firebase/iid/zzf;->zza(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-static {v0}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_32
    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    goto :goto_6

    :cond_35
    const-string v1, "InstanceID/Rpc"

    const-string v2, "Failed to resolve IID implementation package, falling back"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzq()Z

    move-result v0

    sput-boolean v0, Lcom/google/firebase/iid/zzf;->zzbhR:Z

    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    goto :goto_6

    :cond_4d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_61

    const-string v1, "com.google.android.gsf"

    invoke-static {v0, v1}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/firebase/iid/zzf;->zzbhR:Z

    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    goto :goto_6

    :cond_61
    const-string v0, "InstanceID/Rpc"

    const-string v1, "Google Play services is missing, unable to get tokens"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private zzeF(Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x3

    const-string v0, "com.google.android.gsf"

    sget-object v1, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/google/firebase/iid/zzf;->zzbib:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/zzf;->zzbib:I

    iget v0, p0, Lcom/google/firebase/iid/zzf;->zzbib:I

    if-lt v0, v2, :cond_b

    iget v0, p0, Lcom/google/firebase/iid/zzf;->zzbib:I

    if-ne v0, v2, :cond_29

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    :cond_29
    iget v0, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/iid/zzf;->zzbid:J

    const-string v0, "InstanceID/Rpc"

    iget v1, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Backoff due to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method


# virtual methods
.method zzHl()V
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzbgK:Landroid/os/Messenger;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/firebase/iid/zzf$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/iid/zzf$1;-><init>(Lcom/google/firebase/iid/zzf;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/firebase/iid/zzf;->zzbgK:Landroid/os/Messenger;

    goto :goto_4
.end method

.method zzHm()V
    .registers 6

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhV:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_36

    new-instance v0, Lcom/google/firebase/iid/zzf$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/zzf$2;-><init>(Lcom/google/firebase/iid/zzf;)V

    sput-object v0, Lcom/google/firebase/iid/zzf;->zzbhV:Landroid/content/BroadcastReceiver;

    const-string v0, "InstanceID/Rpc"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "InstanceID/Rpc"

    const-string v1, "Registered GSF callback receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    sget-object v2, Lcom/google/firebase/iid/zzf;->zzbhV:Landroid/content/BroadcastReceiver;

    const-string v3, "com.google.android.c2dm.permission.SEND"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :cond_1d
    return-object v0
.end method

.method public zza(Landroid/os/Bundle;Ljava/security/KeyPair;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/iid/zzf;->zzbid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_44

    iget-wide v2, p0, Lcom/google/firebase/iid/zzf;->zzbid:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_44

    const-string v2, "InstanceID/Rpc"

    iget-wide v4, p0, Lcom/google/firebase/iid/zzf;->zzbid:J

    sub-long v0, v4, v0

    iget v3, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    const/16 v4, 0x4e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Backoff mode, next request attempt: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "RETRY_LATER"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    invoke-virtual {p0}, Lcom/google/firebase/iid/zzf;->zzHl()V

    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    if-nez v0, :cond_53

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/iid/zzf;->zzbhZ:J

    new-instance v1, Landroid/content/Intent;

    sget-boolean v0, Lcom/google/firebase/iid/zzf;->zzbhR:Z

    if-eqz v0, :cond_e6

    const-string v0, "com.google.iid.TOKEN_REQUEST"

    :goto_61
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "gmsv"

    iget-object v2, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/iid/zzf;->zzbA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osv"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_ver"

    iget-object v2, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzcr(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_ver_name"

    iget-object v2, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzbx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cliv"

    const-string v2, "fiid-10298000"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appid"

    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzv([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pub2"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sig"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {p2, v3}, Lcom/google/firebase/iid/zzf;->zza(Ljava/security/KeyPair;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/firebase/iid/zzf;->zzp(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, p3}, Lcom/google/firebase/iid/zzf;->zzb(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_e6
    const-string v0, "com.google.android.c2dm.intent.REGISTER"

    goto/16 :goto_61
.end method

.method protected zzb(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/iid/zzf;->zzbhZ:J

    const-string v0, "kid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "|ID|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "X-kid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "|ID|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.gsf"

    sget-object v1, Lcom/google/firebase/iid/zzf;->zzbhQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "InstanceID/Rpc"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_95

    const-string v1, "InstanceID/Rpc"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sending "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    if-eqz v0, :cond_a0

    invoke-virtual {p0}, Lcom/google/firebase/iid/zzf;->zzHm()V

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_9f
    return-void

    :cond_a0
    const-string v0, "google.messenger"

    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzbgK:Landroid/os/Messenger;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzbhX:Landroid/os/Messenger;

    if-nez v0, :cond_af

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzbhY:Lcom/google/android/gms/iid/MessengerCompat;

    if-eqz v0, :cond_cf

    :cond_af
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :try_start_b5
    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzbhX:Landroid/os/Messenger;

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzbhX:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_be
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_be} :catch_bf

    goto :goto_9f

    :catch_bf
    move-exception v0

    const-string v0, "InstanceID/Rpc"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_cf

    const-string v0, "InstanceID/Rpc"

    const-string v1, "Messenger failed, fallback to startService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    sget-boolean v0, Lcom/google/firebase/iid/zzf;->zzbhR:Z

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9f

    :cond_d9
    :try_start_d9
    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzbhY:Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/iid/MessengerCompat;->send(Landroid/os/Message;)V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_de} :catch_bf

    goto :goto_9f

    :cond_df
    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9f
.end method

.method zze(Landroid/os/Message;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "google.messenger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v0, v1, Lcom/google/android/gms/iid/MessengerCompat;

    if-eqz v0, :cond_2d

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/iid/MessengerCompat;

    iput-object v0, p0, Lcom/google/firebase/iid/zzf;->zzbhY:Lcom/google/android/gms/iid/MessengerCompat;

    :cond_2d
    instance-of v0, v1, Landroid/os/Messenger;

    if-eqz v0, :cond_35

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/google/firebase/iid/zzf;->zzbhX:Landroid/os/Messenger;

    :cond_35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/zzf;->zzs(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3d
    const-string v0, "InstanceID/Rpc"

    const-string v1, "Dropping invalid message"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized zzp(Landroid/content/Intent;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzbgG:Landroid/app/PendingIntent;

    if-nez v0, :cond_19

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.example.invalidpackage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzf;->zzbgG:Landroid/app/PendingIntent;

    :cond_19
    const-string v0, "app"

    iget-object v1, p0, Lcom/google/firebase/iid/zzf;->zzbgG:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method zzq(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "unregistered"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_5f

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    const-string v0, "InstanceID/Rpc"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response from GCM "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    return-object v0
.end method

.method zzr(Landroid/content/Intent;)V
    .registers 15

    const-wide/16 v10, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_38

    const-string v0, "InstanceID/Rpc"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response, no error or registration id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_37
    return-void

    :cond_38
    const-string v0, "InstanceID/Rpc"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v1, "InstanceID/Rpc"

    const-string v3, "Received InstanceID error "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_dc

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    const/4 v1, 0x0

    const-string/jumbo v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    const-string v0, "\\|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v0, "ID"

    aget-object v4, v3, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v4, "InstanceID/Rpc"

    const-string v5, "Unexpected structured response "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e3

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_81
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    array-length v0, v3

    if-le v0, v7, :cond_e9

    aget-object v0, v3, v7

    aget-object v1, v3, v8

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_97
    :goto_97
    const-string v2, "error"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_9c
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/iid/zzf;->zzay(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-lez v0, :cond_ef

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/iid/zzf;->zzbia:J

    long-to-int v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/iid/zzf;->zzbid:J

    const-string v0, "InstanceID/Rpc"

    iget v1, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Explicit request from server to backoff: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    :cond_dc
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_52

    :cond_e3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_81

    :cond_e9
    const-string v0, "UNKNOWN"

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_97

    :cond_ef
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ff

    const-string v0, "AUTHENTICATION_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_ff
    invoke-direct {p0, v1}, Lcom/google/firebase/iid/zzf;->zzeF(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_104
    move-object v0, v1

    move-object v1, v2

    goto :goto_9c
.end method

.method zzs(Landroid/content/Intent;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x3

    if-nez p1, :cond_16

    const-string v0, "InstanceID/Rpc"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "InstanceID/Rpc"

    const-string v1, "Unexpected response: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, "InstanceID/Rpc"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v1, "InstanceID/Rpc"

    const-string v2, "Unexpected response "

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_44
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_40

    :cond_4a
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    const-string v0, "unregistered"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_58
    if-nez v0, :cond_5e

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzf;->zzr(Landroid/content/Intent;)V

    goto :goto_15

    :cond_5e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/firebase/iid/zzf;->zzbhZ:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/firebase/iid/zzf;->zzbid:J

    iput v3, p0, Lcom/google/firebase/iid/zzf;->zzbib:I

    iput v3, p0, Lcom/google/firebase/iid/zzf;->zzbic:I

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_108

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v1, "ID"

    aget-object v4, v3, v7

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "InstanceID/Rpc"

    const-string v4, "Unexpected structured response "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_da

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_97
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    const/4 v0, 0x2

    aget-object v1, v3, v0

    array-length v0, v3

    const/4 v4, 0x4

    if-le v0, v4, :cond_b0

    const-string v0, "SYNC"

    aget-object v4, v3, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->zzby(Landroid/content/Context;)V

    :cond_b0
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_c1
    const-string v2, "registration_id"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    :goto_c7
    if-nez v0, :cond_103

    const-string v0, "InstanceID/Rpc"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "InstanceID/Rpc"

    const-string v1, "Ignoring response without a request ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_da
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_97

    :cond_e0
    const-string v0, "RST"

    aget-object v4, v3, v6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/iid/zzf;->zzqn:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/firebase/iid/zzd;->zzb(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/firebase/iid/zzd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/zzd;->zzabQ()Lcom/google/firebase/iid/zzh;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Landroid/content/Context;Lcom/google/firebase/iid/zzh;)V

    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/google/firebase/iid/zzf;->zzb(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_15

    :cond_103
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/iid/zzf;->zzb(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_15

    :cond_108
    move-object v0, v2

    goto :goto_c7
.end method
