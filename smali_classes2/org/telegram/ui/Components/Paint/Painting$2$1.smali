.class Lorg/telegram/ui/Components/Paint/Painting$2$1;
.super Ljava/lang/Object;
.source "Painting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Painting$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Paint/Painting$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Painting$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Components/Paint/Painting$2;

    .prologue
    .line 221
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x2

    const/16 v13, 0xde1

    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 224
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # getter for: Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_12

    .line 255
    :cond_11
    :goto_11
    return-void

    .line 227
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # getter for: Lorg/telegram/ui/Components/Paint/Painting;->shaders:Ljava/util/Map;
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/util/Map;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # getter for: Lorg/telegram/ui/Components/Paint/Painting;->brush:Lorg/telegram/ui/Components/Paint/Brush;
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$500(Lorg/telegram/ui/Components/Paint/Painting;)Lorg/telegram/ui/Components/Paint/Brush;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Brush;->isLightSaber()Z

    move-result v2

    if-eqz v2, :cond_c7

    const-string v2, "compositeWithMaskLight"

    :goto_2a
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Paint/Shader;

    .line 228
    .local v11, "shader":Lorg/telegram/ui/Components/Paint/Shader;
    if-eqz v11, :cond_11

    .line 232
    iget v2, v11, Lorg/telegram/ui/Components/Paint/Shader;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 234
    const-string v2, "mvpMatrix"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # getter for: Lorg/telegram/ui/Components/Paint/Painting;->projection:[F
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$700(Lorg/telegram/ui/Components/Paint/Painting;)[F

    move-result-object v3

    invoke-static {v3}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v12, v0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 235
    const-string v2, "texture"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 236
    const-string v2, "mask"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 237
    const-string v2, "color"

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/Paint/Shader;->getUniform(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget v3, v3, Lorg/telegram/ui/Components/Paint/Painting$2;->val$color:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Paint/Shader;->SetColorUniform(II)V

    .line 239
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 240
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # invokes: Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$1300(Lorg/telegram/ui/Components/Paint/Painting;)I

    move-result v2

    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 242
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 243
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # invokes: Lorg/telegram/ui/Components/Paint/Painting;->getPaintTexture()I
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$200(Lorg/telegram/ui/Components/Paint/Painting;)I

    move-result v2

    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 245
    invoke-static {v12, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 247
    const/16 v2, 0x1406

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # getter for: Lorg/telegram/ui/Components/Paint/Painting;->vertexBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Painting;->access$1400(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/nio/ByteBuffer;

    move-result-object v5

    move v3, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 248
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 249
    const/16 v7, 0x1406

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # getter for: Lorg/telegram/ui/Components/Paint/Painting;->textureBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Painting;->access$1500(Lorg/telegram/ui/Components/Paint/Painting;)Ljava/nio/ByteBuffer;

    move-result-object v10

    move v5, v12

    move v6, v1

    move v8, v0

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 250
    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 252
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Painting$2$1;->this$1:Lorg/telegram/ui/Components/Paint/Painting$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Painting$2;->this$0:Lorg/telegram/ui/Components/Paint/Painting;

    # invokes: Lorg/telegram/ui/Components/Paint/Painting;->getTexture()I
    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Painting;->access$1300(Lorg/telegram/ui/Components/Paint/Painting;)I

    move-result v0

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto/16 :goto_11

    .line 227
    .end local v11    # "shader":Lorg/telegram/ui/Components/Paint/Shader;
    :cond_c7
    const-string v2, "compositeWithMask"

    goto/16 :goto_2a
.end method
