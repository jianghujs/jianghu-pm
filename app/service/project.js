const Service = require('egg').Service;
const validateUtil = require('@jianghujs/jianghu/app/common/validateUtil');
const { BizError, errorInfoEnum } = require('../constant/error');
const _ = require('lodash');
const { tableEnum } = require('../constant/constant');


const actionDataScheme = Object.freeze({
  deleteProject: {
    type: 'object',
    additionalProperties: true,
    required: [ 'projectId', ],
    properties: {
      projectId: { anyOf: [{ type: "string" }] },
    },
  },
});
class ProjectService extends Service {

  // 删除项目
  async deleteProject(actionData) {
    validateUtil.validate(actionDataScheme.deleteProject, actionData, "删除项目");

    const { projectId } = actionData;
    const { jianghuKnex } = this.app;

    if (!projectId) {
      throw new BizError(errorInfoEnum.data_exception);
    }

    // 使用事务
    await jianghuKnex.transaction(async trx => {
      // 删除项目
      await trx(tableEnum.project)
        .where({ projectId })
        .delete()
      // 删除任务
      await trx(tableEnum.task)
        .where({ projectId })
        .delete()
    })
  }

}

module.exports = ProjectService;