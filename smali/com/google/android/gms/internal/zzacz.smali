.class public Lcom/google/android/gms/internal/zzacz;
.super Lcom/google/android/gms/internal/zzact;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzacz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final zzaHf:Lcom/google/android/gms/internal/zzacw;

.field private final zzaHm:Landroid/os/Parcel;

.field private final zzaHn:I

.field private zzaHo:I

.field private zzaHp:I

.field private final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzada;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzada;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;Lcom/google/android/gms/internal/zzacw;)V
    .registers 6

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzact;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacz;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHm:Landroid/os/Parcel;

    iput v1, p0, Lcom/google/android/gms/internal/zzacz;->zzaHn:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacz;->mClassName:Ljava/lang/String;

    :goto_19
    iput v1, p0, Lcom/google/android/gms/internal/zzacz;->zzaHo:I

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacw;->zzyF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacz;->mClassName:Ljava/lang/String;

    goto :goto_19
.end method

.method private static zzY(Ljava/util/Map;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;>;)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;>;>;"
        }
    .end annotation

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzacs$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzacs$zza;->zzyx()I

    move-result v1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_27
    return-object v2
.end method

.method private zza(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
    .registers 7

    packed-switch p2, :pswitch_data_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown type = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_21
    return-void

    :pswitch_22
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzq;->zzdy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :pswitch_3a
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p3, [B

    invoke-static {p3}, Lcom/google/android/gms/common/util/zzc;->zzq([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :pswitch_50
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p3, [B

    invoke-static {p3}, Lcom/google/android/gms/common/util/zzc;->zzr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :pswitch_65
    check-cast p3, Ljava/util/HashMap;

    invoke-static {p1, p3}, Lcom/google/android/gms/common/util/zzr;->zza(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto :goto_21

    :pswitch_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method does not accept concrete type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_22
        :pswitch_3a
        :pswitch_50
        :pswitch_65
        :pswitch_6b
    .end packed-switch
.end method

.method private zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Landroid/os/Parcel;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyu()I

    move-result v0

    packed-switch v0, :pswitch_data_be

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyu()I

    move-result v1

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown field out type = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    :goto_35
    return-void

    :pswitch_36
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzk(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_42
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_52
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_62
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzn(Landroid/os/Parcel;I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_72
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzp(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_7e
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_8e
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_9a
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_a6
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacz;->zzr(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V

    goto :goto_35

    :pswitch_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method does not accept concrete type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_26
        :pswitch_36
        :pswitch_42
        :pswitch_52
        :pswitch_62
        :pswitch_72
        :pswitch_7e
        :pswitch_8e
        :pswitch_9a
        :pswitch_9a
        :pswitch_a6
        :pswitch_b6
    .end packed-switch
.end method

.method private zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/zzacs$zza;Landroid/os/Parcel;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzacs$zza;->zzyA()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/zzacz;->zza(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Landroid/os/Parcel;I)V

    :goto_18
    return-void

    :cond_19
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Landroid/os/Parcel;I)V

    goto :goto_18
.end method

.method private zza(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzacz;->zzY(Ljava/util/Map;)Landroid/util/SparseArray;

    move-result-object v6

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaY(Landroid/os/Parcel;)I

    move-result v7

    const/4 v0, 0x0

    move v1, v0

    :cond_f
    :goto_f
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v7, :cond_41

    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzaX(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzdc(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_f

    if-eqz v1, :cond_2c

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzacs$zza;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzacz;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/zzacs$zza;Landroid/os/Parcel;I)V

    const/4 v0, 0x1

    move v1, v0

    goto :goto_f

    :cond_41
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v7, :cond_62

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Overread allowed size end="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/common/internal/safeparcel/zzb$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_62
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Landroid/os/Parcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyv()Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyu()I

    move-result v0

    packed-switch v0, :pswitch_data_18e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown field type out."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzw(Landroid/os/Parcel;I)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[I)V

    :cond_22
    :goto_22
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    return-void

    :pswitch_28
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzy(Landroid/os/Parcel;I)[Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_22

    :pswitch_30
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzx(Landroid/os/Parcel;I)[J

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[J)V

    goto :goto_22

    :pswitch_38
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzz(Landroid/os/Parcel;I)[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[F)V

    goto :goto_22

    :pswitch_40
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzA(Landroid/os/Parcel;I)[D

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[D)V

    goto :goto_22

    :pswitch_48
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzB(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_22

    :pswitch_50
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzv(Landroid/os/Parcel;I)[Z

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[Z)V

    goto :goto_22

    :pswitch_58
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzC(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/util/zzb;->zza(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto :goto_22

    :pswitch_60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_68
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzG(Landroid/os/Parcel;I)[Landroid/os/Parcel;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_6e
    if-ge v0, v3, :cond_22

    if-lez v0, :cond_77

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    aget-object v4, v1, v0

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyC()Ljava/util/Map;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/zzacz;->zza(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    :cond_88
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyu()I

    move-result v0

    packed-switch v0, :pswitch_data_1aa

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown field type out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_97
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzg(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_27

    :pswitch_9f
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzk(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_27

    :pswitch_a7
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzi(Landroid/os/Parcel;I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_b0
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzl(Landroid/os/Parcel;I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_b9
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzn(Landroid/os/Parcel;I)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_c2
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzp(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_cb
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_d4
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzq(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzq;->zzdy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_ed
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzc;->zzq([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_106
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzc;->zzr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_11e
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzs(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_135
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_175

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_148

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_148
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzq;->zzdy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_135

    :cond_175
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :pswitch_17d
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzF(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyC()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    goto/16 :goto_27

    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_28
        :pswitch_30
        :pswitch_38
        :pswitch_40
        :pswitch_48
        :pswitch_50
        :pswitch_58
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_68
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_97
        :pswitch_9f
        :pswitch_a7
        :pswitch_b0
        :pswitch_b9
        :pswitch_c2
        :pswitch_cb
        :pswitch_d4
        :pswitch_ed
        :pswitch_106
        :pswitch_11e
        :pswitch_17d
    .end packed-switch
.end method

.method private zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzyt()Z

    move-result v0

    if-eqz v0, :cond_c

    check-cast p3, Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzacz;->zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/util/ArrayList;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzys()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/zzacz;->zza(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    goto :goto_b
.end method

.method private zzb(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/zzacs$zza;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_21

    if-eqz v0, :cond_13

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzacs$zza;->zzys()I

    move-result v2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/zzacz;->zza(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_21
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static zzr(Landroid/os/Bundle;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_21
    return-object v1
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaiI:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    const-string v1, "Cannot convert to JSON on client side."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacz;->zzyH()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzacz;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzacw;->zzdw(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/zzacz;->zza(Ljava/lang/StringBuilder;Ljava/util/Map;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzada;->zza(Lcom/google/android/gms/internal/zzacz;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzds(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Converting to JSON does not require this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzdt(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Converting to JSON does not require this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzyH()Landroid/os/Parcel;
    .registers 4

    const/4 v2, 0x2

    iget v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHo:I

    packed-switch v0, :pswitch_data_26

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHm:Landroid/os/Parcel;

    return-object v0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHm:Landroid/os/Parcel;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzaZ(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHm:Landroid/os/Parcel;

    iget v1, p0, Lcom/google/android/gms/internal/zzacz;->zzaHp:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    iput v2, p0, Lcom/google/android/gms/internal/zzacz;->zzaHo:I

    goto :goto_6

    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHm:Landroid/os/Parcel;

    iget v1, p0, Lcom/google/android/gms/internal/zzacz;->zzaHp:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzc;->zzJ(Landroid/os/Parcel;I)V

    iput v2, p0, Lcom/google/android/gms/internal/zzacz;->zzaHo:I

    goto :goto_6

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1b
    .end packed-switch
.end method

.method zzyI()Lcom/google/android/gms/internal/zzacw;
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHn:I

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/gms/internal/zzacz;->zzaHn:I

    const/16 v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid creation type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    const/4 v0, 0x0

    :goto_23
    return-object v0

    :pswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    goto :goto_23

    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    goto :goto_23

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_24
        :pswitch_27
    .end packed-switch
.end method

.method public zzyr()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacz;->zzaHf:Lcom/google/android/gms/internal/zzacw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacz;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzacw;->zzdw(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_5
.end method
