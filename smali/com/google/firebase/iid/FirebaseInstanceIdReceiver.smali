.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;


# static fields
.field private static zzbgs:Z


# instance fields
.field private zzcll:Lcom/google/firebase/iid/zzb$zzb;

.field private zzclm:Lcom/google/firebase/iid/zzb$zzb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzbgs:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private zzK(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzb;
    .registers 4

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzclm:Lcom/google/firebase/iid/zzb$zzb;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/firebase/iid/zzb$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzb$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzclm:Lcom/google/firebase/iid/zzb$zzb;

    :cond_13
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzclm:Lcom/google/firebase/iid/zzb$zzb;

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzcll:Lcom/google/firebase/iid/zzb$zzb;

    if-nez v0, :cond_21

    new-instance v0, Lcom/google/firebase/iid/zzb$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzb$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzcll:Lcom/google/firebase/iid/zzb$zzb;

    :cond_21
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzcll:Lcom/google/firebase/iid/zzb$zzb;

    goto :goto_15
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_18

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_18
    const-string v1, "gcm.rawData64"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v2, "rawData"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "gcm.rawData64"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_2f
    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google.com/iid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "gcm.googleapis.com/refresh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    :cond_45
    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    move-object v1, v0

    :goto_48
    const/4 v0, -0x1

    if-eqz v1, :cond_4f

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0

    :cond_4f
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->setResultCode(I)V

    :cond_58
    return-void

    :cond_59
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    move-object v1, v0

    goto :goto_48

    :cond_69
    const-string v1, "FirebaseInstanceId"

    const-string v2, "Unexpected intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_48
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 7

    const/4 v0, -0x1

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzq()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->setResultCode(I)V

    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->zzK(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/google/firebase/iid/zzb$zzb;->zzb(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    :goto_1b
    return v0

    :cond_1c
    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabU()Lcom/google/firebase/iid/zzg;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/iid/zzg;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0

    goto :goto_1b
.end method
