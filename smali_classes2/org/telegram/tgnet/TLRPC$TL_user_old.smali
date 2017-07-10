.class public Lorg/telegram/tgnet/TLRPC$TL_user_old;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7519
    const v0, 0x22e49072

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7518
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 7
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7523
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7524
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_cc

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    .line 7525
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_cf

    move v0, v1

    :goto_18
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    .line 7526
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d2

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    .line 7527
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d5

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    .line 7528
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_d8

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    .line 7529
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_db

    move v0, v1

    :goto_3e
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    .line 7530
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_de

    move v0, v1

    :goto_48
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    .line 7531
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_e1

    move v0, v1

    :goto_52
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    .line 7532
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_e4

    :goto_5b
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    .line 7533
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    .line 7534
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6f

    .line 7535
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    .line 7537
    :cond_6f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7b

    .line 7538
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    .line 7540
    :cond_7b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_87

    .line 7541
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    .line 7543
    :cond_87
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_93

    .line 7544
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    .line 7546
    :cond_93
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9f

    .line 7547
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    .line 7549
    :cond_9f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_af

    .line 7550
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 7552
    :cond_af
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_bf

    .line 7553
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 7555
    :cond_bf
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_cb

    .line 7556
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    .line 7558
    :cond_cb
    return-void

    :cond_cc
    move v0, v2

    .line 7524
    goto/16 :goto_f

    :cond_cf
    move v0, v2

    .line 7525
    goto/16 :goto_18

    :cond_d2
    move v0, v2

    .line 7526
    goto/16 :goto_21

    :cond_d5
    move v0, v2

    .line 7527
    goto/16 :goto_2a

    :cond_d8
    move v0, v2

    .line 7528
    goto/16 :goto_33

    :cond_db
    move v0, v2

    .line 7529
    goto/16 :goto_3e

    :cond_de
    move v0, v2

    .line 7530
    goto/16 :goto_48

    :cond_e1
    move v0, v2

    .line 7531
    goto/16 :goto_52

    :cond_e4
    move v1, v2

    .line 7532
    goto/16 :goto_5b
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7561
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7562
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    if-eqz v0, :cond_c7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_d
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7563
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    if-eqz v0, :cond_cd

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_17
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7564
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    if-eqz v0, :cond_d3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_21
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7565
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    if-eqz v0, :cond_d9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_2b
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7566
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    if-eqz v0, :cond_df

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_35
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7567
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    if-eqz v0, :cond_e5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_41
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7568
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    if-eqz v0, :cond_ed

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_4c
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7569
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    if-eqz v0, :cond_f5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_57
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7570
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    if-eqz v0, :cond_fd

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :goto_62
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 7571
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7572
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7573
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_79

    .line 7574
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7576
    :cond_79
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_84

    .line 7577
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7579
    :cond_84
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8f

    .line 7580
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7582
    :cond_8f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9a

    .line 7583
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7585
    :cond_9a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a5

    .line 7586
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7588
    :cond_a5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b0

    .line 7589
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7591
    :cond_b0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_bb

    .line 7592
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7594
    :cond_bb
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c6

    .line 7595
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7597
    :cond_c6
    return-void

    .line 7562
    :cond_c7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_d

    .line 7563
    :cond_cd
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_17

    .line 7564
    :cond_d3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_21

    .line 7565
    :cond_d9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_2b

    .line 7566
    :cond_df
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_35

    .line 7567
    :cond_e5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_41

    .line 7568
    :cond_ed
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_4c

    .line 7569
    :cond_f5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_57

    .line 7570
    :cond_fd
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_62
.end method
