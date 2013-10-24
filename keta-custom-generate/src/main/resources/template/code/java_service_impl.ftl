/**
 * There are <a href="https://github.com/ketayao/keta-custom">keta-custom</a> code generation
 */
package	${pknServiceImpl};

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ketayao.ketacustom.util.dwz.Page;
import com.ketayao.ketacustom.util.dwz.PageUtils;
import ${pknEntity}.${className};
import ${pknDAO}.${className}DAO;
import ${pknService}.${className}Service;

@Service
@Transactional
public class ${className}ServiceImpl implements ${className}Service {
	
	@Autowired
	private ${className}DAO ${instanceName}DAO;

	/**   
	 * @param ${instanceName}  
	 * @see ${pknService}.${className}Service#save(${pknEntity}.${className})  
	 */
	@Override
	public void save(${className} ${instanceName}) {
		${instanceName}DAO.save(${instanceName});
	}

	/**   
	 * @param id
	 * @return  
	 * @see ${pknService}.${className}Service#get(java.lang.Long)  
	 */
	@Override
	public ${className} get(Long id) {
		return ${instanceName}DAO.findOne(id);
	}

	/**   
	 * @param ${instanceName}  
	 * @see ${pknService}.${className}Service#update(${pknEntity}.${className})  
	 */
	@Override
	public void update(${className} ${instanceName}) {
		${instanceName}DAO.save(${instanceName});
	}

	/**   
	 * @param id  
	 * @see ${pknService}.${className}Service#delete(java.lang.Long)  
	 */
	@Override
	public void delete(Long id) {
		${instanceName}DAO.delete(id);
	}
	
	/**   
	 * @param page
	 * @param ${indexName}
	 * @return  
	 * @see ${pknService}.${className}Service#find(com.ketayao.ketacustom.util.dwz.Page, java.lang.String)  
	 */
	@Override
	public List<${className}> find(Page page, String ${indexName}) {
		org.springframework.data.domain.Page<${className}> springDataPage = ${instanceName}DAO.findBy${indexName?cap_first}Containing(${indexName}, PageUtils.createPageable(page));
		page.setTotalCount(springDataPage.getTotalElements());
		return springDataPage.getContent();
	}

	/**   
	 * @param page
	 * @return  
	 * @see ${pknService}.${className}Service#findAll(com.ketayao.ketacustom.util.dwz.Page)  
	 */
	@Override
	public List<${className}> findAll(Page page) {
		org.springframework.data.domain.Page<${className}> springDataPage = ${instanceName}DAO.findAll(PageUtils.createPageable(page));
		page.setTotalCount(springDataPage.getTotalElements());
		return springDataPage.getContent();
	}
}
