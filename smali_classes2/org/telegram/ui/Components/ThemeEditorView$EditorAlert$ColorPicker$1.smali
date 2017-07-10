.class Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;-><init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

.field final synthetic val$num:I

.field final synthetic val$this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;I)V
    .registers 4
    .param p1, "this$2"    # Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iput p3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 10
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 236
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$000(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 266
    :goto_c
    return-void

    .line 239
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static {v3, v7}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$002(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    .local v1, "color":I
    if-gez v1, :cond_a1

    .line 242
    const/4 v1, 0x0

    .line 243
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 250
    :cond_5e
    :goto_5e
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getColor()I

    move-result v2

    .line 251
    .local v2, "currentColor":I
    iget v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e4

    .line 252
    and-int/lit16 v3, v2, -0x100

    and-int/lit16 v4, v1, 0xff

    or-int v2, v3, v4

    .line 260
    :cond_6f
    :goto_6f
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setColor(I)V

    .line 261
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_75
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_115

    .line 262
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->getColor()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZ)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    .line 245
    .end local v0    # "a":I
    .end local v2    # "currentColor":I
    :cond_a1
    const/16 v3, 0xff

    if-le v1, v3, :cond_5e

    .line 246
    const/16 v1, 0xff

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;
    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->colorEditText:[Landroid/widget/EditText;
    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->access$100(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;)[Landroid/widget/EditText;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_5e

    .line 253
    .restart local v2    # "currentColor":I
    :cond_e4
    iget v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    if-ne v3, v7, :cond_f4

    .line 254
    const v3, -0xff01

    and-int/2addr v3, v2

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v2, v3, v4

    goto/16 :goto_6f

    .line 255
    :cond_f4
    iget v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    if-nez v3, :cond_104

    .line 256
    const v3, -0xff0001

    and-int/2addr v3, v2

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int v2, v3, v4

    goto/16 :goto_6f

    .line 257
    :cond_104
    iget v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->val$num:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6f

    .line 258
    const v3, 0xffffff

    and-int/2addr v3, v2

    and-int/lit16 v4, v1, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v2, v3, v4

    goto/16 :goto_6f

    .line 265
    .restart local v0    # "a":I
    :cond_115
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker$1;->this$2:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->this$1:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    # setter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->ignoreTextChange:Z
    invoke-static {v3, v6}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$002(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)Z

    goto/16 :goto_c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 227
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 232
    return-void
.end method
