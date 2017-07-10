.class public final Lorg/joda/time/Partial;
.super Lorg/joda/time/base/AbstractPartial;
.source "Partial.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/Partial$Property;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xb356edd9a8aL


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private transient iFormatter:[Lorg/joda/time/format/DateTimeFormatter;

.field private final iTypes:[Lorg/joda/time/DateTimeFieldType;

.field private final iValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Chronology;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 124
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    .line 125
    new-array v0, v1, [Lorg/joda/time/DateTimeFieldType;

    iput-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    .line 126
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/joda/time/Partial;->iValues:[I

    .line 127
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;[Lorg/joda/time/DateTimeFieldType;[I)V
    .registers 4

    .prologue
    .line 296
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 297
    iput-object p1, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    .line 298
    iput-object p2, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    .line 299
    iput-object p3, p0, Lorg/joda/time/Partial;->iValues:[I

    .line 300
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;I)V
    .registers 4

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/DateTimeFieldType;ILorg/joda/time/Chronology;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;ILorg/joda/time/Chronology;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 154
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 155
    iput-object v0, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    .line 156
    if-nez p1, :cond_19

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_19
    new-array v1, v3, [Lorg/joda/time/DateTimeFieldType;

    aput-object p1, v1, v2

    iput-object v1, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    .line 160
    new-array v1, v3, [I

    aput p2, v1, v2

    iput-object v1, p0, Lorg/joda/time/Partial;->iValues:[I

    .line 161
    iget-object v1, p0, Lorg/joda/time/Partial;->iValues:[I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    .line 162
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Partial;[I)V
    .registers 4

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 281
    iget-object v0, p1, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    iput-object v0, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    .line 282
    iget-object v0, p1, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    iput-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    .line 283
    iput-object p2, p0, Lorg/joda/time/Partial;->iValues:[I

    .line 284
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePartial;)V
    .registers 5

    .prologue
    .line 258
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 259
    if-nez p1, :cond_d

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_d
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    .line 263
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    iput-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    .line 264
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/joda/time/Partial;->iValues:[I

    .line 265
    const/4 v0, 0x0

    :goto_2c
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 266
    iget-object v1, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 267
    iget-object v1, p0, Lorg/joda/time/Partial;->iValues:[I

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v2

    aput v2, v1, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 269
    :cond_45
    return-void
.end method

.method public constructor <init>([Lorg/joda/time/DateTimeFieldType;[I)V
    .registers 4

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/Partial;-><init>([Lorg/joda/time/DateTimeFieldType;[ILorg/joda/time/Chronology;)V

    .line 176
    return-void
.end method

.method public constructor <init>([Lorg/joda/time/DateTimeFieldType;[ILorg/joda/time/Chronology;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPartial;-><init>()V

    .line 191
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v3

    .line 192
    iput-object v3, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    .line 193
    if-nez p1, :cond_18

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Types array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_18
    if-nez p2, :cond_22

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Values array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_22
    array-length v0, p2

    array-length v2, p1

    if-eq v0, v2, :cond_2e

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Values array must be the same length as the types array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2e
    array-length v0, p1

    if-nez v0, :cond_36

    .line 203
    iput-object p1, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    .line 204
    iput-object p2, p0, Lorg/joda/time/Partial;->iValues:[I

    .line 249
    :goto_35
    return-void

    :cond_36
    move v0, v1

    .line 207
    :goto_37
    array-length v2, p1

    if-ge v0, v2, :cond_5a

    .line 208
    aget-object v2, p1, v0

    if-nez v2, :cond_57

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Types array must not contain null: index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 212
    :cond_5a
    const/4 v0, 0x0

    .line 213
    :goto_5b
    array-length v2, p1

    if-ge v1, v2, :cond_182

    .line 214
    aget-object v4, p1, v1

    .line 215
    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    iget-object v5, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v5}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v2

    .line 216
    if-lez v1, :cond_17d

    .line 217
    invoke-virtual {v0, v2}, Lorg/joda/time/DurationField;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 218
    if-ltz v0, :cond_7a

    if-eqz v0, :cond_a9

    invoke-virtual {v2}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v5

    if-nez v5, :cond_a9

    .line 219
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Types array must be in order largest-smallest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_a9
    if-nez v0, :cond_17d

    .line 222
    add-int/lit8 v0, v1, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    if-nez v0, :cond_d8

    .line 223
    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    if-nez v0, :cond_17d

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Types array must not contain duplicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_d8
    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    if-nez v0, :cond_10d

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Types array must be in order largest-smallest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_10d
    add-int/lit8 v0, v1, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    iget-object v5, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0, v5}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    .line 232
    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    iget-object v6, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v5, v6}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v5

    .line 233
    invoke-virtual {v0, v5}, Lorg/joda/time/DurationField;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_15a

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Types array must be in order largest-smallest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_15a
    invoke-virtual {v0, v5}, Lorg/joda/time/DurationField;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_17d

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Types array must not contain duplicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_17d
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto/16 :goto_5b

    .line 246
    :cond_182
    invoke-virtual {p1}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    iput-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    .line 247
    invoke-virtual {v3, p0, p2}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    .line 248
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lorg/joda/time/Partial;->iValues:[I

    goto/16 :goto_35
.end method


# virtual methods
.method public getChronology()Lorg/joda/time/Chronology;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .registers 4

    .prologue
    .line 333
    iget-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getFormatter()Lorg/joda/time/format/DateTimeFormatter;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 704
    iget-object v0, p0, Lorg/joda/time/Partial;->iFormatter:[Lorg/joda/time/format/DateTimeFormatter;

    .line 705
    if-nez v0, :cond_32

    .line 706
    invoke-virtual {p0}, Lorg/joda/time/Partial;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 707
    const/4 v0, 0x0

    .line 721
    :goto_c
    return-object v0

    .line 709
    :cond_d
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/joda/time/format/DateTimeFormatter;

    .line 711
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 712
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lorg/joda/time/format/ISODateTimeFormat;->forFields(Ljava/util/Collection;ZZ)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v3

    aput-object v3, v0, v2

    .line 713
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_30

    .line 714
    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aput-object v2, v0, v1
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_30} :catch_35

    .line 719
    :cond_30
    :goto_30
    iput-object v0, p0, Lorg/joda/time/Partial;->iFormatter:[Lorg/joda/time/format/DateTimeFormatter;

    .line 721
    :cond_32
    aget-object v0, v0, v5

    goto :goto_c

    .line 716
    :catch_35
    move-exception v1

    goto :goto_30
.end method

.method public getValue(I)I
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, Lorg/joda/time/Partial;->iValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public getValues()[I
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lorg/joda/time/Partial;->iValues:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public isMatch(Lorg/joda/time/ReadableInstant;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 655
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    .line 656
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v4

    move v0, v1

    .line 657
    :goto_a
    iget-object v5, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    array-length v5, v5

    if-ge v0, v5, :cond_25

    .line 658
    iget-object v5, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v5

    .line 659
    iget-object v6, p0, Lorg/joda/time/Partial;->iValues:[I

    aget v6, v6, v0

    if-eq v5, v6, :cond_22

    .line 663
    :goto_21
    return v1

    .line 657
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 663
    :cond_25
    const/4 v1, 0x1

    goto :goto_21
.end method

.method public isMatch(Lorg/joda/time/ReadablePartial;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 679
    if-nez p1, :cond_b

    .line 680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v0, v1

    .line 682
    :goto_c
    iget-object v2, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    array-length v2, v2

    if-ge v0, v2, :cond_23

    .line 683
    iget-object v2, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v2

    .line 684
    iget-object v3, p0, Lorg/joda/time/Partial;->iValues:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_20

    .line 688
    :goto_1f
    return v1

    .line 682
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 688
    :cond_23
    const/4 v1, 0x1

    goto :goto_1f
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Partial;
    .registers 3

    .prologue
    .line 626
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/Partial;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Partial;
    .registers 3

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/Partial;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/Partial$Property;
    .registers 4

    .prologue
    .line 641
    new-instance v0, Lorg/joda/time/Partial$Property;

    invoke-virtual {p0, p1}, Lorg/joda/time/Partial;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/Partial$Property;-><init>(Lorg/joda/time/Partial;I)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 737
    iget-object v0, p0, Lorg/joda/time/Partial;->iFormatter:[Lorg/joda/time/format/DateTimeFormatter;

    .line 738
    if-nez v0, :cond_10

    .line 739
    invoke-virtual {p0}, Lorg/joda/time/Partial;->getFormatter()Lorg/joda/time/format/DateTimeFormatter;

    .line 740
    iget-object v0, p0, Lorg/joda/time/Partial;->iFormatter:[Lorg/joda/time/format/DateTimeFormatter;

    .line 741
    if-nez v0, :cond_10

    .line 742
    invoke-virtual {p0}, Lorg/joda/time/Partial;->toStringList()Ljava/lang/String;

    move-result-object v0

    .line 749
    :goto_f
    return-object v0

    .line 745
    :cond_10
    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 746
    if-nez v0, :cond_1a

    .line 747
    invoke-virtual {p0}, Lorg/joda/time/Partial;->toStringList()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 749
    :cond_1a
    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 785
    if-nez p1, :cond_7

    .line 786
    invoke-virtual {p0}, Lorg/joda/time/Partial;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 800
    if-nez p1, :cond_7

    .line 801
    invoke-virtual {p0}, Lorg/joda/time/Partial;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public toStringList()Ljava/lang/String;
    .registers 6

    .prologue
    .line 762
    invoke-virtual {p0}, Lorg/joda/time/Partial;->size()I

    move-result v1

    .line 763
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v1, 0x14

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 764
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 765
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_3a

    .line 766
    if-lez v0, :cond_20

    .line 767
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 769
    :cond_20
    iget-object v3, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 770
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 771
    iget-object v3, p0, Lorg/joda/time/Partial;->iValues:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 773
    :cond_3a
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/Partial;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 427
    if-nez p1, :cond_b

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_b
    invoke-virtual {p0, p1}, Lorg/joda/time/Partial;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 431
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9d

    .line 432
    iget-object v0, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lorg/joda/time/DateTimeFieldType;

    .line 433
    array-length v0, v2

    new-array v3, v0, [I

    .line 437
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    iget-object v4, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0, v4}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v4

    .line 438
    invoke-virtual {v4}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b6

    move v0, v1

    .line 439
    :goto_2d
    iget-object v5, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    array-length v5, v5

    if-ge v0, v5, :cond_4c

    .line 440
    iget-object v5, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    aget-object v5, v5, v0

    .line 441
    invoke-virtual {v5}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v6

    iget-object v7, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v6, v7}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v6

    .line 442
    invoke-virtual {v6}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 443
    invoke-virtual {v4, v6}, Lorg/joda/time/DurationField;->compareTo(Ljava/lang/Object;)I

    move-result v6

    .line 444
    if-lez v6, :cond_7e

    .line 456
    :cond_4c
    :goto_4c
    iget-object v4, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget-object v4, p0, Lorg/joda/time/Partial;->iValues:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    aput-object p1, v2, v0

    .line 459
    aput p2, v3, v0

    .line 460
    iget-object v1, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v0, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget-object v1, p0, Lorg/joda/time/Partial;->iValues:[I

    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    new-instance v0, Lorg/joda/time/Partial;

    iget-object v1, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Chronology;[Lorg/joda/time/DateTimeFieldType;[I)V

    .line 464
    iget-object v1, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1, v0, v3}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    move-object p0, v0

    .line 472
    :cond_7d
    :goto_7d
    return-object p0

    .line 446
    :cond_7e
    if-nez v6, :cond_9a

    .line 447
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v6

    iget-object v7, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v6, v7}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v6

    .line 448
    invoke-virtual {v5}, Lorg/joda/time/DateTimeFieldType;->getRangeDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    iget-object v7, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v5, v7}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v5

    .line 449
    invoke-virtual {v6, v5}, Lorg/joda/time/DurationField;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_4c

    .line 439
    :cond_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 467
    :cond_9d
    invoke-virtual {p0, v0}, Lorg/joda/time/Partial;->getValue(I)I

    move-result v1

    if-eq p2, v1, :cond_7d

    .line 470
    invoke-virtual {p0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v1

    .line 471
    invoke-virtual {p0, v0}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 472
    new-instance v0, Lorg/joda/time/Partial;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    move-object p0, v0

    goto :goto_7d

    :cond_b6
    move v0, v1

    goto :goto_4c
.end method

.method public withChronologyRetainFields(Lorg/joda/time/Chronology;)Lorg/joda/time/Partial;
    .registers 6

    .prologue
    .line 400
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v1

    .line 402
    invoke-virtual {p0}, Lorg/joda/time/Partial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne v1, v0, :cond_f

    .line 407
    :goto_e
    return-object p0

    .line 405
    :cond_f
    new-instance v0, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    iget-object v3, p0, Lorg/joda/time/Partial;->iValues:[I

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Chronology;[Lorg/joda/time/DateTimeFieldType;[I)V

    .line 406
    iget-object v2, p0, Lorg/joda/time/Partial;->iValues:[I

    invoke-virtual {v1, v0, v2}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    move-object p0, v0

    .line 407
    goto :goto_e
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/Partial;
    .registers 6

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lorg/joda/time/Partial;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 516
    invoke-virtual {p0, v0}, Lorg/joda/time/Partial;->getValue(I)I

    move-result v1

    if-ne p2, v1, :cond_b

    .line 521
    :goto_a
    return-object p0

    .line 519
    :cond_b
    invoke-virtual {p0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v1

    .line 520
    invoke-virtual {p0, v0}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 521
    new-instance v0, Lorg/joda/time/Partial;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    move-object p0, v0

    goto :goto_a
.end method

.method public withFieldAddWrapped(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/Partial;
    .registers 6

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Lorg/joda/time/Partial;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 564
    if-nez p2, :cond_7

    .line 569
    :goto_6
    return-object p0

    .line 567
    :cond_7
    invoke-virtual {p0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v1

    .line 568
    invoke-virtual {p0, v0}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 569
    new-instance v0, Lorg/joda/time/Partial;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    move-object p0, v0

    goto :goto_6
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/Partial;
    .registers 6

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lorg/joda/time/Partial;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 540
    if-nez p2, :cond_7

    .line 545
    :goto_6
    return-object p0

    .line 543
    :cond_7
    invoke-virtual {p0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v1

    .line 544
    invoke-virtual {p0, v0}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p2}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 545
    new-instance v0, Lorg/joda/time/Partial;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    move-object p0, v0

    goto :goto_6
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/Partial;
    .registers 8

    .prologue
    .line 588
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 600
    :cond_4
    :goto_4
    return-object p0

    .line 591
    :cond_5
    invoke-virtual {p0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v1

    .line 592
    const/4 v0, 0x0

    :goto_a
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 593
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 594
    invoke-virtual {p0, v2}, Lorg/joda/time/Partial;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v2

    .line 595
    if-ltz v2, :cond_2a

    .line 596
    invoke-virtual {p0, v2}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    invoke-virtual {v3, p0, v2, v1, v4}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v1

    .line 592
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 600
    :cond_2d
    new-instance v0, Lorg/joda/time/Partial;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    move-object p0, v0

    goto :goto_4
.end method

.method public without(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/Partial;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 484
    invoke-virtual {p0, p1}, Lorg/joda/time/Partial;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 485
    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    .line 486
    invoke-virtual {p0}, Lorg/joda/time/Partial;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lorg/joda/time/DateTimeFieldType;

    .line 487
    invoke-virtual {p0}, Lorg/joda/time/Partial;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    .line 488
    iget-object v3, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    invoke-static {v3, v6, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v3, p0, Lorg/joda/time/Partial;->iTypes:[Lorg/joda/time/DateTimeFieldType;

    add-int/lit8 v4, v0, 0x1

    array-length v5, v1

    sub-int/2addr v5, v0

    invoke-static {v3, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v3, p0, Lorg/joda/time/Partial;->iValues:[I

    invoke-static {v3, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget-object v3, p0, Lorg/joda/time/Partial;->iValues:[I

    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    sub-int/2addr v5, v0

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    new-instance v0, Lorg/joda/time/Partial;

    iget-object v3, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-direct {v0, v3, v1, v2}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Chronology;[Lorg/joda/time/DateTimeFieldType;[I)V

    .line 493
    iget-object v1, p0, Lorg/joda/time/Partial;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1, v0, v2}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    move-object p0, v0

    .line 496
    :cond_41
    return-object p0
.end method
