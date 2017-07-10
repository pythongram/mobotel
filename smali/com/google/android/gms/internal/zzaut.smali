.class public Lcom/google/android/gms/internal/zzaut;
.super Lcom/google/android/gms/internal/zzauh;


# instance fields
.field private final zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzbwi:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzauh;-><init>(Lcom/google/android/gms/internal/zzaue;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static zzH(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_2e

    :try_start_e
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_40

    :try_start_22
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_43

    move-result-object v1

    :try_start_26
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    move-object v0, v1

    goto :goto_3

    :catchall_2e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_31
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    :cond_36
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_3b
    throw v1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3c} :catch_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_3c} :catch_3e

    :catch_3c
    move-exception v1

    goto :goto_3

    :catch_3e
    move-exception v1

    goto :goto_3

    :catchall_40
    move-exception v1

    move-object v2, v0

    goto :goto_31

    :catchall_43
    move-exception v1

    goto :goto_31
.end method

.method private zza(ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_5

    move-object p2, v0

    :cond_4
    :goto_4
    return-object p2

    :cond_5
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_4

    instance-of v1, p2, Ljava/lang/Double;

    if-nez v1, :cond_4

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_4

    :cond_1d
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_2d

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_4

    :cond_2d
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_3d

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_4

    :cond_3d
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    const-wide/16 v0, 0x1

    :goto_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_4

    :cond_50
    const-wide/16 v0, 0x0

    goto :goto_4b

    :cond_53
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_62

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_4

    :cond_62
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_6e

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_6e

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_77

    :cond_6e
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_77
    move-object p2, v0

    goto :goto_4
.end method

.method public static zza(Lcom/google/android/gms/internal/zzauu$zzb;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_7

    const-string v0, "null"

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nevent_filter {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "filter_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwo:Ljava/lang/Integer;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_name"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwp:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "event_count_filter"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbws:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-static {v1, v6, v2, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)V

    const-string v2, "  filters {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zzb;->zzbwq:[Lcom/google/android/gms/internal/zzauu$zzc;

    array-length v3, v2

    :goto_2e
    if-ge v0, v3, :cond_39

    aget-object v4, v2, v0

    const/4 v5, 0x2

    invoke-static {v1, v5, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzauu$zzc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_39
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v0, "}\n}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static zza(Lcom/google/android/gms/internal/zzauu$zze;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_6

    const-string v0, "null"

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "filter_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwo:Ljava/lang/Integer;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "property_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwE:Ljava/lang/String;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauu$zze;->zzbwF:Lcom/google/android/gms/internal/zzauu$zzc;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzauu$zzc;)V

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzauu$zzc;)V
    .registers 6

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complement"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzc;->zzbww:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "param_name"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwx:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, p1, 0x1

    const-string v1, "string_filter"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwu:Lcom/google/android/gms/internal/zzauu$zzf;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)V

    add-int/lit8 v0, p1, 0x1

    const-string v1, "number_filter"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzauu$zzc;->zzbwv:Lcom/google/android/gms/internal/zzauu$zzd;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzauw$zze;)V
    .registers 7

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "bundle {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "protocol_version"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxf:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "platform"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxn:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gmp_version"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxr:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "uploading_gmp_version"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxs:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "config_version"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxE:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gmp_app_id"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqL:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_id"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzaS:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbhN:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version_major"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxA:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version_minor"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxB:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_version_release"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxC:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "firebase_instance_id"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqT:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "dev_cert_hash"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxw:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_store"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqM:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "upload_timestamp_millis"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxi:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "start_timestamp_millis"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxj:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "end_timestamp_millis"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxk:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "previous_bundle_start_timestamp_millis"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxl:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "previous_bundle_end_timestamp_millis"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxm:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "app_instance_id"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxv:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "resettable_device_id"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxt:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "device_id"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxD:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "limited_ad_tracking"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxu:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "os_version"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbb:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "device_model"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxo:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "user_default_language"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxp:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "time_zone_offset_minutes"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxq:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bundle_sequential_index"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxx:Ljava/lang/Integer;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "service_upload"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxy:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "health_monitor"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbqP:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxF:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f0

    const-string v0, "android_id"

    iget-object v1, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxF:Ljava/lang/Long;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_f0
    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxh:[Lcom/google/android/gms/internal/zzauw$zzg;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zzg;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxz:[Lcom/google/android/gms/internal/zzauw$zza;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zza;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzauw$zze;->zzbxg:[Lcom/google/android/gms/internal/zzauw$zzb;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zzb;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauu$zzd;)V
    .registers 6

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    const-string v0, "UNKNOWN_COMPARISON_TYPE"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_54

    :goto_1d
    const-string v1, "comparison_type"

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const-string v0, "match_as_float"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwz:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "comparison_value"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwA:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "min_comparison_value"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwB:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "max_comparison_value"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzd;->zzbwC:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_48
    const-string v0, "LESS_THAN"

    goto :goto_1d

    :pswitch_4b
    const-string v0, "GREATER_THAN"

    goto :goto_1d

    :pswitch_4e
    const-string v0, "EQUAL"

    goto :goto_1d

    :pswitch_51
    const-string v0, "BETWEEN"

    goto :goto_1d

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_48
        :pswitch_4b
        :pswitch_4e
        :pswitch_51
    .end packed-switch
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauu$zzf;)V
    .registers 9

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    const-string v0, "UNKNOWN_MATCH_TYPE"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwG:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_7a

    :goto_1d
    const-string v1, "match_type"

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_22
    const-string v0, "expression"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwH:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v0, "case_sensitive"

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwI:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6f

    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "expression_list {\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauu$zzf;->zzbwJ:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_43
    if-ge v0, v2, :cond_69

    aget-object v3, v1, v0

    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :pswitch_57
    const-string v0, "REGEXP"

    goto :goto_1d

    :pswitch_5a
    const-string v0, "BEGINS_WITH"

    goto :goto_1d

    :pswitch_5d
    const-string v0, "ENDS_WITH"

    goto :goto_1d

    :pswitch_60
    const-string v0, "PARTIAL"

    goto :goto_1d

    :pswitch_63
    const-string v0, "EXACT"

    goto :goto_1d

    :pswitch_66
    const-string v0, "IN_LIST"

    goto :goto_1d

    :cond_69
    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_57
        :pswitch_5a
        :pswitch_5d
        :pswitch_60
        :pswitch_63
        :pswitch_66
    .end packed-switch
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauw$zzf;)V
    .registers 15

    const/16 v10, 0xa

    const/4 v0, 0x0

    if-nez p3, :cond_6

    :goto_5
    return-void

    :cond_6
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    if-eqz v1, :cond_41

    add-int/lit8 v1, v4, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "results: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxH:[J

    array-length v6, v5

    move v1, v0

    move v2, v0

    :goto_26
    if-ge v1, v6, :cond_3e

    aget-wide v8, v5, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    add-int/lit8 v3, v2, 0x1

    if-eqz v2, :cond_37

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_26

    :cond_3e
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_41
    iget-object v1, p3, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    if-eqz v1, :cond_6e

    add-int/lit8 v1, v4, 0x1

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "status: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzauw$zzf;->zzbxG:[J

    array-length v5, v3

    move v1, v0

    :goto_53
    if-ge v0, v5, :cond_6b

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    if-eqz v1, :cond_64

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_53

    :cond_6b
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6e
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v0, "}\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zza;)V
    .registers 9

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    if-nez v3, :cond_10

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "audience_membership {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "audience_id"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zza;->zzbwk:Ljava/lang/Integer;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "new_audience"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zza;->zzbwW:Ljava/lang/Boolean;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "current_data"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zza;->zzbwU:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauw$zzf;)V

    const-string v4, "previous_data"

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zza;->zzbwV:Lcom/google/android/gms/internal/zzauw$zzf;

    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/zzauw$zzf;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method private static zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zzb;)V
    .registers 9

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    if-nez v3, :cond_10

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "event {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzb;->name:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "timestamp_millis"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwZ:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "previous_timestamp_millis"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbxa:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "count"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzb;->count:Ljava/lang/Integer;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zzb;->zzbwY:[Lcom/google/android/gms/internal/zzauw$zzc;

    invoke-static {p0, v1, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zzc;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method private static zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zzc;)V
    .registers 9

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    if-nez v3, :cond_10

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "param {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzc;->name:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "string_value"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzc;->zzaGV:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "int_value"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "double_value"

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zzc;->zzbwf:Ljava/lang/Double;

    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method private static zza(Ljava/lang/StringBuilder;I[Lcom/google/android/gms/internal/zzauw$zzg;)V
    .registers 9

    if-nez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, p1, 0x1

    array-length v2, p2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_2

    aget-object v3, p2, v0

    if-nez v3, :cond_10

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_10
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string v4, "user_property {\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "set_timestamp_millis"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxJ:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "name"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzg;->name:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "string_value"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "int_value"

    iget-object v5, v3, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    invoke-static {p0, v1, v4, v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v4, "double_value"

    iget-object v3, v3, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;I)V

    const-string/jumbo v3, "}\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-boolean v2, v1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v2, :cond_7

    if-eqz p2, :cond_1e

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1c} :catch_20

    if-eqz v1, :cond_7

    :cond_1e
    const/4 v0, 0x1

    goto :goto_7

    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public static zza([JI)Z
    .registers 8

    const/4 v0, 0x0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x40

    if-lt p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    div-int/lit8 v1, p1, 0x40

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    rem-int/lit8 v1, p1, 0x40

    shl-long/2addr v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static zza(Ljava/util/BitSet;)[J
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    div-int/lit8 v3, v0, 0x40

    new-array v4, v3, [J

    move v2, v1

    :goto_c
    if-ge v2, v3, :cond_38

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    move v0, v1

    :goto_13
    const/16 v5, 0x40

    if-ge v0, v5, :cond_20

    mul-int/lit8 v5, v2, 0x40

    add-int/2addr v5, v0

    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v6

    if-lt v5, v6, :cond_24

    :cond_20
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_24
    mul-int/lit8 v5, v2, 0x40

    add-int/2addr v5, v0

    invoke-virtual {p0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_35

    aget-wide v6, v4, v2

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v4, v2

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_38
    return-object v4
.end method

.method public static zzae(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    if-nez p0, :cond_a

    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzauw$zzd;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nbatch {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/zzauw$zzd;->zzbxd:[Lcom/google/android/gms/internal/zzauw$zze;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_25

    aget-object v4, v2, v0

    if-nez v4, :cond_20

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_20
    const/4 v5, 0x1

    invoke-static {v1, v5, v4}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/zzauw$zze;)V

    goto :goto_1d

    :cond_25
    const-string/jumbo v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static zzch(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x2

    if-ge v1, v0, :cond_11

    :try_start_5
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_8} :catch_c

    move-result-object v0

    if-eqz v0, :cond_d

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static zzfT(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private zzgc(Ljava/lang/String;)I
    .registers 3

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKS()I

    move-result v0

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKR()I

    move-result v0

    goto :goto_10
.end method

.method public static zzgd(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static zzgf(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_14

    const-string v0, "(\\+|-)?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x136

    if-gt v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static zzy([B)J
    .registers 9

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    const-wide/16 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_26

    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-lt v0, v4, :cond_26

    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_24
    move v0, v1

    goto :goto_8

    :cond_26
    return-wide v2
.end method

.method public static zzy(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_1a

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :catch_1a
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzA(Landroid/content/Intent;)Z
    .registers 4

    const-string v0, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "https://www.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "android-app://com.google.appcrawler"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public bridge synthetic zzJV()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJV()V

    return-void
.end method

.method public bridge synthetic zzJW()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJW()V

    return-void
.end method

.method public bridge synthetic zzJX()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJX()V

    return-void
.end method

.method public bridge synthetic zzJY()Lcom/google/android/gms/internal/zzatb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJY()Lcom/google/android/gms/internal/zzatb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzJZ()Lcom/google/android/gms/internal/zzatf;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzJZ()Lcom/google/android/gms/internal/zzatf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKa()Lcom/google/android/gms/internal/zzauj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKb()Lcom/google/android/gms/internal/zzatu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKb()Lcom/google/android/gms/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKc()Lcom/google/android/gms/internal/zzatl;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKc()Lcom/google/android/gms/internal/zzatl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKd()Lcom/google/android/gms/internal/zzaul;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKd()Lcom/google/android/gms/internal/zzaul;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKe()Lcom/google/android/gms/internal/zzauk;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKe()Lcom/google/android/gms/internal/zzauk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKf()Lcom/google/android/gms/internal/zzatv;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKf()Lcom/google/android/gms/internal/zzatv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKg()Lcom/google/android/gms/internal/zzatj;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKg()Lcom/google/android/gms/internal/zzatj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKh()Lcom/google/android/gms/internal/zzaut;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKi()Lcom/google/android/gms/internal/zzauc;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKj()Lcom/google/android/gms/internal/zzaun;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKj()Lcom/google/android/gms/internal/zzaun;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKk()Lcom/google/android/gms/internal/zzaud;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKk()Lcom/google/android/gms/internal/zzaud;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKl()Lcom/google/android/gms/internal/zzatx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKm()Lcom/google/android/gms/internal/zzaua;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKm()Lcom/google/android/gms/internal/zzaua;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzKn()Lcom/google/android/gms/internal/zzati;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    return-object v0
.end method

.method zzL(Landroid/content/Context;Ljava/lang/String;)J
    .registers 11
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzmR()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "MD5"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzaut;->zzch(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    if-nez v5, :cond_27

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Could not get MD5 instance"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_26
    return-wide v0

    :cond_27
    if-eqz v4, :cond_78

    :try_start_29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaut;->zzM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_78

    invoke-static {p1}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_5c

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    if-lez v6, :cond_5c

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaut;->zzy([B)J

    move-result-wide v0

    goto :goto_26

    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v4

    const-string v5, "Could not get signatures"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_69} :catch_6a

    goto :goto_26

    :catch_6a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v4, "Package name not found"

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_78
    move-wide v0, v2

    goto :goto_26
.end method

.method zzM(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/zzaut;->zzl(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_37

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v3

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v3}, Lcom/google/android/gms/internal/zzaut;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    :cond_3f
    return-object v1
.end method

.method zzM(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    const-string v0, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p2, v2}, Lcom/google/android/gms/internal/zzadf;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_4d

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_4d

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_3d} :catch_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_3d} :catch_4f

    move-result v0

    :goto_3e
    return v0

    :catch_3f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Error obtaining certificate"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4d
    :goto_4d
    const/4 v0, 0x1

    goto :goto_3e

    :catch_4f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Package name not found"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4d
.end method

.method public zzNi()J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaut;->zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v2

    :try_start_f
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-direct {v0, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v3, p0, Lcom/google/android/gms/internal/zzaut;->zzbwi:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/zzaut;->zzbwi:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    monitor-exit v2

    :goto_2e
    return-wide v0

    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaut;->zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v2

    :try_start_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaut;->zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    monitor-exit v2

    goto :goto_2e

    :catchall_46
    move-exception v0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .registers 15
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/16 v9, 0x19

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_d2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKL()I

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_30

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d6

    :cond_30
    if-eqz p4, :cond_d3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaut;->zzfY(Ljava/lang/String;)I

    move-result v4

    :goto_36
    if-nez v4, :cond_3c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaut;->zzfZ(Ljava/lang/String;)I

    move-result v4

    :cond_3c
    :goto_3c
    if-eqz v4, :cond_5f

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zzd(Landroid/os/Bundle;I)Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzati;->zzKO()I

    move-result v6

    invoke-virtual {p0, v0, v6, v8}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_ev"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5b

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/zzaut;->zzb(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_5b
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1c

    :cond_5f
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/zzaut;->zzk(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    const-string v4, "_ev"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zzd(Landroid/os/Bundle;I)Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzati;->zzKO()I

    move-result v4

    invoke-virtual {p0, v0, v4, v8}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_ev"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zzb(Landroid/os/Bundle;Ljava/lang/Object;)V

    :cond_90
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1c

    :cond_94
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaut;->zzfT(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cd

    add-int/lit8 v1, v1, 0x1

    if-le v1, v9, :cond_cd

    const/16 v4, 0x30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Event can\'t contain more then "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " params"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v6

    invoke-virtual {v6, v4, p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/zzaut;->zzd(Landroid/os/Bundle;I)Z

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_cd
    move v0, v1

    move v1, v0

    goto/16 :goto_1c

    :cond_d1
    move-object v0, v3

    :cond_d2
    return-object v0

    :cond_d3
    move v4, v2

    goto/16 :goto_36

    :cond_d6
    move v4, v2

    goto/16 :goto_3c
.end method

.method zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzatq;
    .registers 14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzfV(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Invalid conditional property event name"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_25
    if-eqz p2, :cond_54

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_2c
    const-string v1, "_o"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_o"

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzf;->zzx(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKh()Lcom/google/android/gms/internal/zzaut;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, p7}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p6, :cond_5a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaut;->zzM(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    :goto_46
    new-instance v0, Lcom/google/android/gms/internal/zzatq;

    new-instance v2, Lcom/google/android/gms/internal/zzato;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzato;-><init>(Landroid/os/Bundle;)V

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzatq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzato;Ljava/lang/String;J)V

    goto :goto_7

    :cond_54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_2c

    :cond_5a
    move-object v1, v0

    goto :goto_46
.end method

.method public zza(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_17

    if-eqz p3, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_17
    :goto_17
    return-object p1

    :cond_18
    const/4 p1, 0x0

    goto :goto_17
.end method

.method public zza(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_11

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :cond_11
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1d
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2b

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    :cond_2b
    if-eqz p2, :cond_2

    if-eqz p3, :cond_45

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzMb()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Not putting event parameter. Invalid value type. name, type"

    invoke-virtual {v1, v2, p2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_45
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public zza(Lcom/google/android/gms/internal/zzauw$zzc;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzauw$zzc;->zzaGV:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzauw$zzc;->zzbwf:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzauw$zzc;->zzaGV:Ljava/lang/String;

    :goto_12
    return-void

    :cond_13
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzauw$zzc;->zzbxc:Ljava/lang/Long;

    goto :goto_12

    :cond_1c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_25

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzauw$zzc;->zzbwf:Ljava/lang/Double;

    goto :goto_12

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) event param value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public zza(Lcom/google/android/gms/internal/zzauw$zzg;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzaGV:Ljava/lang/String;

    :goto_12
    return-void

    :cond_13
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    check-cast p2, Ljava/lang/Long;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbxc:Ljava/lang/Long;

    goto :goto_12

    :cond_1c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_25

    check-cast p2, Ljava/lang/Double;

    iput-object p2, p1, Lcom/google/android/gms/internal/zzauw$zzg;->zzbwf:Ljava/lang/Double;

    goto :goto_12

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Ignoring invalid (type) user attribute value"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzaut;->zzd(Landroid/os/Bundle;I)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/4 v1, 0x6

    if-eq p2, v1, :cond_1a

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1a

    const/4 v1, 0x2

    if-ne p2, v1, :cond_20

    :cond_1a
    const-string v1, "_el"

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaut;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaue;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaut;->zzbqc:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaue;->zzKa()Lcom/google/android/gms/internal/zzauj;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_err"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzauj;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p4, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p4, Ljava/lang/Long;

    if-nez v2, :cond_4

    instance-of v2, p4, Ljava/lang/Float;

    if-nez v2, :cond_4

    instance-of v2, p4, Ljava/lang/Integer;

    if-nez v2, :cond_4

    instance-of v2, p4, Ljava/lang/Byte;

    if-nez v2, :cond_4

    instance-of v2, p4, Ljava/lang/Short;

    if-nez v2, :cond_4

    instance-of v2, p4, Ljava/lang/Boolean;

    if-nez v2, :cond_4

    instance-of v2, p4, Ljava/lang/Double;

    if-nez v2, :cond_4

    instance-of v2, p4, Ljava/lang/String;

    if-nez v2, :cond_2d

    instance-of v2, p4, Ljava/lang/Character;

    if-nez v2, :cond_2d

    instance-of v2, p4, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4e

    :cond_2d
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v3, "Value is too long; discarded. Value kind, name, value length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, p1, p2, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_4

    :cond_4e
    move v0, v1

    goto :goto_4
.end method

.method zza(Landroid/os/Parcelable;)[B
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_9
    invoke-interface {p1, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_14

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :catchall_14
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzauw$zzd;)[B
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzauw$zzd;->zzaeT()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzag([B)Lcom/google/android/gms/internal/zzbxm;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzauw$zzd;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbxm;->zzaeG()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Data loss. Failed to serialize batch"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method zzac(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is required and can\'t be empty. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_25
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_3d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_45
    if-ge v1, v2, :cond_69

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_63

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_63
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_45

    :cond_69
    const/4 v0, 0x1

    goto :goto_10
.end method

.method zzad(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/16 v5, 0x5f

    const/4 v0, 0x0

    if-nez p2, :cond_13

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_12
    return v0

    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is required and can\'t be empty. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12

    :cond_27
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_41

    if-eq v1, v5, :cond_41

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_49
    if-ge v1, v2, :cond_6b

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    if-eq v3, v5, :cond_65

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_65

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :cond_65
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_49

    :cond_6b
    const/4 v0, 0x1

    goto :goto_12
.end method

.method zzb([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_a
    array-length v3, p1

    invoke-virtual {v2, p1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p2, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_18
    .catch Lcom/google/android/gms/common/internal/safeparcel/zzb$zza; {:try_start_a .. :try_end_18} :catch_1c
    .catchall {:try_start_a .. :try_end_18} :catchall_2f

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catch_1c
    move-exception v0

    :try_start_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v3, "Failed to load parcelable from buffer"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2f

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    goto :goto_4

    :catchall_2f
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zzb(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1b

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_d

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    :cond_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_el"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1b
    return-void
.end method

.method zzb(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p3, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_29
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public zzbW(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadg;->zzbi(Landroid/content/Context;)Lcom/google/android/gms/internal/zzadf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzadf;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzMd()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_12
.end method

.method zzc(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is required and can\'t be null. Type"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_10
    return v0

    :cond_11
    const-string v1, "firebase_"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name starts with reserved prefix. Type, name"

    invoke-virtual {v1, v2, p1, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_27
    if-eqz p2, :cond_3d

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Name is reserved. Type, name"

    invoke-virtual {v1, v2, p1, p3}, Lcom/google/android/gms/internal/zzatx$zza;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_3d
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public zzd(Landroid/os/Bundle;I)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string v1, "_err"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    const-string v0, "_err"

    int-to-long v2, p2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method zzd(Lcom/google/android/gms/internal/zzatq;Lcom/google/android/gms/internal/zzatd;)Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/zzatd;->zzbqL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public zzfU(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x2

    const-string v1, "event"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaut;->zzac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, "event"

    sget-object v2, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zzbqd:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzc(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v0, 0xd

    goto :goto_9

    :cond_17
    const-string v1, "event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKM()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzb(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzfV(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x2

    const-string v1, "event"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaut;->zzad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, "event"

    sget-object v2, Lcom/google/android/gms/measurement/AppMeasurement$zza;->zzbqd:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzc(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v0, 0xd

    goto :goto_9

    :cond_17
    const-string v1, "event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKM()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzb(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzfW(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x6

    const-string v1, "user property"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaut;->zzac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, "user property"

    sget-object v2, Lcom/google/android/gms/measurement/AppMeasurement$zzg;->zzbqi:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzc(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v0, 0xf

    goto :goto_9

    :cond_17
    const-string v1, "user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzb(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzfX(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x6

    const-string v1, "user property"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaut;->zzad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, "user property"

    sget-object v2, Lcom/google/android/gms/measurement/AppMeasurement$zzg;->zzbqi:Ljava/util/Map;

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzc(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v0, 0xf

    goto :goto_9

    :cond_17
    const-string v1, "user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKN()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzb(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzfY(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x3

    const-string v1, "event param"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaut;->zzac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, "event param"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzc(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v0, 0xe

    goto :goto_9

    :cond_16
    const-string v1, "event param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKO()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzb(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzfZ(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x3

    const-string v1, "event param"

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/zzaut;->zzad(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string v1, "event param"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzc(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v0, 0xe

    goto :goto_9

    :cond_16
    const-string v1, "event param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzati;->zzKO()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/google/android/gms/internal/zzaut;->zzb(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzga(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zzgb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    :cond_29
    const/4 v0, 0x1

    goto :goto_14
.end method

.method zzgb(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^1:\\d+:android:[a-f0-9]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzge(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzLC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzLg()Z

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method zzgg(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "1"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v1

    const-string v2, "measurement.upload.blacklist_internal"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzauc;->zzZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method zzgh(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "1"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKi()Lcom/google/android/gms/internal/zzauc;

    move-result-object v1

    const-string v2, "measurement.upload.blacklist_public"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzauc;->zzZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method zzgi(Ljava/lang/String;)Z
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_30

    :cond_d
    :goto_d
    packed-switch v2, :pswitch_data_3e

    move v0, v1

    :pswitch_11
    return v0

    :sswitch_12
    const-string v3, "_in"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v2, v1

    goto :goto_d

    :sswitch_1c
    const-string v3, "_ui"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v2, v0

    goto :goto_d

    :sswitch_26
    const-string v3, "_ug"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v2, 0x2

    goto :goto_d

    :sswitch_data_30
    .sparse-switch
        0x171c4 -> :sswitch_12
        0x17331 -> :sswitch_26
        0x17333 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public zzh(JJ)Z
    .registers 10

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_b

    cmp-long v1, p3, v2

    if-gtz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-gtz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zzk(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzKQ()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const-string v0, "param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzati;->zzKP()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_14
.end method

.method public zzk([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to gzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public zzl(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "_ev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKQ()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaut;->zzgd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKQ()I

    move-result v0

    :goto_24
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKn()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzKP()I

    move-result v0

    goto :goto_24
.end method

.method public zzm(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 5

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "user property referrer"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zzgc(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    :goto_12
    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const-string v0, "user property"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zzgc(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/google/android/gms/internal/zzaut;->zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_12

    :cond_21
    const/4 v0, 0x7

    goto :goto_15
.end method

.method public bridge synthetic zzmR()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zzmR()V

    return-void
.end method

.method protected zzmS()V
    .registers 7

    const-wide/16 v4, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    cmp-long v3, v0, v4

    if-nez v3, :cond_24

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/internal/zzaut;->zzbwh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public zzn(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zzgc(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaut;->zzgc(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/internal/zzaut;->zza(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11
.end method

.method public bridge synthetic zznR()Lcom/google/android/gms/common/util/zze;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/zzauh;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method public zzu(Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_d2

    const-string v0, "utm_campaign"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "utm_source"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "utm_medium"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "gclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_21} :catch_c2

    move-result-object v0

    :goto_22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_3a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    const-string v5, "campaign"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    const-string v4, "source"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "medium"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    const-string v2, "gclid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    const-string v0, "utm_term"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string v2, "term"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    const-string v0, "utm_content"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    const-string v0, "aclid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, "aclid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9e
    const-string v0, "cp1"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_af

    const-string v2, "cp1"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    const-string v0, "anid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "anid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_c2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzatx;->zzMa()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v2

    const-string v3, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_d2
    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_22
.end method

.method public zzx([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_13
    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_24

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_24
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_13

    :catch_29
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v1

    const-string v2, "Failed to ungzip content"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method public zzz([B)J
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzmR()V

    const-string v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaut;->zzch(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaut;->zzKl()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Failed to get MD5"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_1d
    return-wide v0

    :cond_1e
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaut;->zzy([B)J

    move-result-wide v0

    goto :goto_1d
.end method
