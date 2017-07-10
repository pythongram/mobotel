.class Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I


# direct methods
.method public varargs constructor <init>([I)V
    .registers 3
    .param p1, "legalKeys"    # [I

    .prologue
    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    .line 1512
    return-void
.end method


# virtual methods
.method public addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V
    .registers 3
    .param p1, "child"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    return-void
.end method

.method public canReach(I)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .registers 6
    .param p1, "key"    # I

    .prologue
    const/4 v2, 0x0

    .line 1526
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    move-object v0, v2

    .line 1534
    :goto_6
    return-object v0

    .line 1529
    :cond_7
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 1530
    .local v0, "child":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    .end local v0    # "child":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_20
    move-object v0, v2

    .line 1534
    goto :goto_6
.end method

.method public containsKey(I)Z
    .registers 7
    .param p1, "key"    # I

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->mLegalKeys:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v3, :cond_f

    aget v2, v0, v1

    .line 1520
    .local v2, "legalKey":I
    if-ne v2, p1, :cond_c

    const/4 v4, 0x1

    .line 1522
    .end local v2    # "legalKey":I
    :goto_b
    return v4

    .line 1519
    .restart local v2    # "legalKey":I
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1522
    .end local v2    # "legalKey":I
    :cond_f
    const/4 v4, 0x0

    goto :goto_b
.end method
