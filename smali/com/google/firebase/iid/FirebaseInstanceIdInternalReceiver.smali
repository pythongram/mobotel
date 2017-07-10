.class public final Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;
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

    sput-boolean v0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzbgs:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private zzK(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzb;
    .registers 4

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclm:Lcom/google/firebase/iid/zzb$zzb;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/firebase/iid/zzb$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzb$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclm:Lcom/google/firebase/iid/zzb$zzb;

    :cond_13
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzclm:Lcom/google/firebase/iid/zzb$zzb;

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzcll:Lcom/google/firebase/iid/zzb$zzb;

    if-nez v0, :cond_21

    new-instance v0, Lcom/google/firebase/iid/zzb$zzb;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/iid/zzb$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzcll:Lcom/google/firebase/iid/zzb$zzb;

    :cond_21
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzcll:Lcom/google/firebase/iid/zzb$zzb;

    goto :goto_15
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "wrapped_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-nez v1, :cond_15

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Missing or invalid wrapped intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_15
    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/util/zzt;->zzzq()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->zzK(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/iid/zzb$zzb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdInternalReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/iid/zzb$zzb;->zzb(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    goto :goto_2

    :cond_2d
    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabU()Lcom/google/firebase/iid/zzg;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/firebase/iid/zzg;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I

    goto :goto_2
.end method
