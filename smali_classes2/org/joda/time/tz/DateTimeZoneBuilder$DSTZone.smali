.class final Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
.super Lorg/joda/time/DateTimeZone;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DSTZone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x605522c6413e57d1L


# instance fields
.field final iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

.field final iStandardOffset:I

.field final iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V
    .registers 5

    .prologue
    .line 1176
    invoke-direct {p0, p1}, Lorg/joda/time/DateTimeZone;-><init>(Ljava/lang/String;)V

    .line 1177
    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1178
    iput-object p3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1179
    iput-object p4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1180
    return-void
.end method

.method private findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;
    .registers 10

    .prologue
    .line 1304
    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1305
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1306
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1311
    :try_start_6
    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v2

    invoke-virtual {v0, p1, p2, v4, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_1b
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_d} :catch_1e

    move-result-wide v2

    .line 1322
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v5

    invoke-virtual {v1, p1, p2, v4, v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_15} :catch_25
    .catch Ljava/lang/ArithmeticException; {:try_start_e .. :try_end_15} :catch_23

    move-result-wide p1

    .line 1332
    :goto_16
    cmp-long v2, v2, p1

    if-lez v2, :cond_21

    :goto_1a
    return-object v0

    .line 1313
    :catch_1b
    move-exception v2

    move-wide v2, p1

    .line 1319
    goto :goto_e

    .line 1316
    :catch_1e
    move-exception v2

    move-wide v2, p1

    .line 1318
    goto :goto_e

    :cond_21
    move-object v0, v1

    .line 1332
    goto :goto_1a

    .line 1327
    :catch_23
    move-exception v4

    goto :goto_16

    .line 1324
    :catch_25
    move-exception v4

    goto :goto_16
.end method

.method static readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->readMillis(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v2

    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->readFrom(Ljava/io/DataInput;)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1283
    if-ne p0, p1, :cond_5

    .line 1294
    :cond_4
    :goto_4
    return v0

    .line 1286
    :cond_5
    instance-of v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    if-eqz v2, :cond_35

    .line 1287
    check-cast p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    .line 1288
    invoke-virtual {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    iget v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v2, v3}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4

    :cond_35
    move v0, v1

    .line 1294
    goto :goto_4
.end method

.method public getNameKey(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 1183
    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getNameKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(J)I
    .registers 6

    .prologue
    .line 1187
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    invoke-direct {p0, p1, p2}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->findMatchingRecurrence(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getStandardOffset(J)I
    .registers 4

    .prologue
    .line 1191
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    return v0
.end method

.method public isFixed()Z
    .registers 2

    .prologue
    .line 1195
    const/4 v0, 0x0

    return v0
.end method

.method public nextTransition(J)J
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    .line 1199
    iget v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1200
    iget-object v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1201
    iget-object v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1206
    :try_start_8
    invoke-virtual {v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v5, p1, p2, v4, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_30
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_f} :catch_33

    move-result-wide v0

    .line 1208
    cmp-long v2, p1, v8

    if-lez v2, :cond_19

    cmp-long v2, v0, v8

    if-gez v2, :cond_19

    move-wide v0, p1

    :cond_19
    move-wide v2, v0

    .line 1221
    :goto_1a
    :try_start_1a
    invoke-virtual {v5}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v6, p1, p2, v4, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->next(JII)J
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_21} :catch_36
    .catch Ljava/lang/ArithmeticException; {:try_start_1a .. :try_end_21} :catch_39

    move-result-wide v0

    .line 1223
    cmp-long v4, p1, v8

    if-lez v4, :cond_3e

    cmp-long v4, v0, v8

    if-gez v4, :cond_3e

    :goto_2a
    move-wide v0, p1

    .line 1235
    :goto_2b
    cmp-long v4, v2, v0

    if-lez v4, :cond_3c

    :goto_2f
    return-wide v0

    .line 1212
    :catch_30
    move-exception v0

    move-wide v2, p1

    .line 1218
    goto :goto_1a

    .line 1215
    :catch_33
    move-exception v0

    move-wide v2, p1

    .line 1217
    goto :goto_1a

    .line 1227
    :catch_36
    move-exception v0

    move-wide v0, p1

    .line 1233
    goto :goto_2b

    .line 1230
    :catch_39
    move-exception v0

    move-wide v0, p1

    .line 1232
    goto :goto_2b

    :cond_3c
    move-wide v0, v2

    .line 1235
    goto :goto_2f

    :cond_3e
    move-wide p1, v0

    goto :goto_2a
.end method

.method public previousTransition(J)J
    .registers 12

    .prologue
    .line 1241
    const-wide/16 v0, 0x1

    add-long v2, p1, v0

    .line 1243
    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    .line 1244
    iget-object v7, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1245
    iget-object v8, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    .line 1250
    :try_start_a
    invoke-virtual {v8}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v7, v2, v3, v6, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->previous(JII)J
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_11} :catch_3e
    .catch Ljava/lang/ArithmeticException; {:try_start_a .. :try_end_11} :catch_41

    move-result-wide v0

    .line 1252
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1f

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1f

    move-wide v0, v2

    :cond_1f
    move-wide v4, v0

    .line 1265
    :goto_20
    :try_start_20
    invoke-virtual {v7}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->getSaveMillis()I

    move-result v0

    invoke-virtual {v8, v2, v3, v6, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->previous(JII)J
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_27} :catch_44
    .catch Ljava/lang/ArithmeticException; {:try_start_20 .. :try_end_27} :catch_47

    move-result-wide v0

    .line 1267
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_4a

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_4a

    :goto_34
    move-wide v0, v2

    .line 1279
    :goto_35
    cmp-long v2, v4, v0

    if-lez v2, :cond_3a

    move-wide v0, v4

    :cond_3a
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 1256
    :catch_3e
    move-exception v0

    move-wide v4, v2

    .line 1262
    goto :goto_20

    .line 1259
    :catch_41
    move-exception v0

    move-wide v4, v2

    .line 1261
    goto :goto_20

    .line 1271
    :catch_44
    move-exception v0

    move-wide v0, v2

    .line 1277
    goto :goto_35

    .line 1274
    :catch_47
    move-exception v0

    move-wide v0, v2

    .line 1276
    goto :goto_35

    :cond_4a
    move-wide v2, v0

    goto :goto_34
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1298
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStandardOffset:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->writeMillis(Ljava/io/DataOutput;J)V

    .line 1299
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iStartRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->writeTo(Ljava/io/DataOutput;)V

    .line 1300
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;->iEndRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-virtual {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;->writeTo(Ljava/io/DataOutput;)V

    .line 1301
    return-void
.end method
